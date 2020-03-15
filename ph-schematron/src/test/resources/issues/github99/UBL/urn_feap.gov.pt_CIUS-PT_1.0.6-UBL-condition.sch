<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="condition" id="UBL-condition">
  <param name="BR-CIUS-PT-12" value="(cbc:Percent) &gt; 0"/>
  <param name="BR-CIUS-PT-14" value="(cbc:Percent) &gt; 0"/>
  <param name="BR-CIUS-PT-16" value="(cbc:Percent = 0)"/>
  
  <param name="BR-17" value="exists(cac:PartyName/cbc:Name) and (not(cac:PartyName/cbc:Name = ../cac:AccountingSupplierParty/cac:Party/cac:PartyName/cbc:Name) and not(cac:PartyIdentification/cbc:ID = ../cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification/cbc:ID) and not(cac:PartyLegalEntity/cbc:CompanyID = ../cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyID))"/>
  <param name="BR-27" value="(cac:Price/cbc:PriceAmount) &gt;= 0"/>
  <param name="BR-28" value="(cac:Price/cac:AllowanceCharge/cbc:BaseAmount) &gt;= 0 or not(exists(cac:Price/cac:AllowanceCharge/cbc:BaseAmount))"/>

  <param name="BR-AA-01" value="((count(//cac:AllowanceCharge/cac:TaxCategory[normalize-space(cbc:ID) = 'AA']) + count(//cac:ClassifiedTaxCategory[normalize-space(cbc:ID) = 'AA'])) &gt; 0 and count(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory[normalize-space(cbc:ID) = 'AA']) &gt; 0) or ((count(//cac:AllowanceCharge/cac:TaxCategory[normalize-space(cbc:ID) = 'AA']) + count(//cac:ClassifiedTaxCategory[normalize-space(cbc:ID) = 'AA'])) = 0 and count(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory[normalize-space(cbc:ID) = 'AA']) = 0)"/>
  <param name="BR-AA-05" value="(cbc:Percent) &gt; 0"/>
  <param name="BR-AA-06" value="(cbc:Percent) &gt; 0"/>
  <param name="BR-AA-07" value="(cbc:Percent) &gt; 0"/>
  <param name="BR-AA-08" value="every $rate in round(cbc:Percent) satisfies ((exists(//cac:InvoiceLine) and (../cbc:TaxableAmount = (round((sum(../../../cac:InvoiceLine[normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='AA'][cac:Item/cac:ClassifiedTaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:LineExtensionAmount)) + sum(../../../cac:AllowanceCharge[cbc:ChargeIndicator='true'][normalize-space(cac:TaxCategory/cbc:ID)='AA'][cac:TaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:Amount)) - sum(../../../cac:AllowanceCharge[cbc:ChargeIndicator='false'][normalize-space(cac:TaxCategory/cbc:ID)='AA'][cac:TaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:Amount))) * 100) div 100))) or (exists(//cac:CreditNoteLine) and (../cbc:TaxableAmount = (round((sum(../../../cac:CreditNoteLine[normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='AA'][cac:Item/cac:ClassifiedTaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:LineExtensionAmount)) + sum(../../../cac:AllowanceCharge[cbc:ChargeIndicator='true'][normalize-space(cac:TaxCategory/cbc:ID)='AA'][cac:TaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:Amount)) - sum(../../../cac:AllowanceCharge[cbc:ChargeIndicator='false'][normalize-space(cac:TaxCategory/cbc:ID)='AA'][cac:TaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:Amount))) * 100) div 100))))"/>
  <param name="BR-AA-09" value="xs:decimal(../cbc:TaxAmount) = round((xs:decimal(../cbc:TaxableAmount) * (xs:decimal(cbc:Percent) div 100)) * 10 * 10) div 100 "/>

  <param name="BR-S-01" value="((count(//cac:AllowanceCharge/cac:TaxCategory[normalize-space(cbc:ID) = 'S']) + count(//cac:ClassifiedTaxCategory[normalize-space(cbc:ID) = 'S'])) &gt; 0 and count(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory[normalize-space(cbc:ID) = 'S']) &gt; 0) or ((count(//cac:AllowanceCharge/cac:TaxCategory[normalize-space(cbc:ID) = 'S']) + count(//cac:ClassifiedTaxCategory[normalize-space(cbc:ID) = 'S'])) = 0 and count(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory[normalize-space(cbc:ID) = 'S']) = 0)"/>
  <param name="BR-S-05" value="(cbc:Percent) &gt; 0"/>
  <param name="BR-S-06" value="(cbc:Percent) &gt; 0"/>
  <param name="BR-S-07" value="(cbc:Percent) &gt; 0"/>
  <param name="BR-S-08" value="every $rate in round(cbc:Percent) satisfies ((exists(//cac:InvoiceLine) and (../cbc:TaxableAmount = (round((sum(../../../cac:InvoiceLine[normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='S'][cac:Item/cac:ClassifiedTaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:LineExtensionAmount)) + sum(../../../cac:AllowanceCharge[cbc:ChargeIndicator='true'][normalize-space(cac:TaxCategory/cbc:ID)='S'][cac:TaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:Amount)) - sum(../../../cac:AllowanceCharge[cbc:ChargeIndicator='false'][normalize-space(cac:TaxCategory/cbc:ID)='S'][cac:TaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:Amount))) * 100) div 100))) or (exists(//cac:CreditNoteLine) and (../cbc:TaxableAmount = (round((sum(../../../cac:CreditNoteLine[normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='S'][cac:Item/cac:ClassifiedTaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:LineExtensionAmount)) + sum(../../../cac:AllowanceCharge[cbc:ChargeIndicator='true'][normalize-space(cac:TaxCategory/cbc:ID)='S'][cac:TaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:Amount)) - sum(../../../cac:AllowanceCharge[cbc:ChargeIndicator='false'][normalize-space(cac:TaxCategory/cbc:ID)='S'][cac:TaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:Amount))) * 100) div 100))))"/>
  <param name="BR-S-09" value="xs:decimal(../cbc:TaxAmount) = round((xs:decimal(../cbc:TaxableAmount) * (xs:decimal(cbc:Percent) div 100)) * 10 * 10) div 100 "/>

  <param name="BR-E-01" value="((count(//cac:AllowanceCharge/cac:TaxCategory[normalize-space(cbc:ID) = 'E']) + count(//cac:ClassifiedTaxCategory[normalize-space(cbc:ID) = 'E'])) &gt; 0 and count(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory[normalize-space(cbc:ID) = 'E']) &gt; 0) or ((count(//cac:AllowanceCharge/cac:TaxCategory[normalize-space(cbc:ID) = 'E']) + count(//cac:ClassifiedTaxCategory[normalize-space(cbc:ID) = 'E'])) = 0 and count(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory[normalize-space(cbc:ID) = 'E']) = 0)"/>
  <param name="BR-E-05" value="(cbc:Percent = 0)"/>
  <param name="BR-E-06" value="(cbc:Percent = 0)"/>
  <param name="BR-E-07" value="(cbc:Percent = 0)"/>
  <param name="BR-E-08" value="(exists(//cac:InvoiceLine) and (xs:decimal(../cbc:TaxableAmount) = (round((sum(../../../cac:InvoiceLine[normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='E']/xs:decimal(cbc:LineExtensionAmount)) + sum(../../../cac:AllowanceCharge[cbc:ChargeIndicator='true'][normalize-space(cac:TaxCategory/cbc:ID)='E']/xs:decimal(cbc:Amount)) - sum(../../../cac:AllowanceCharge[cbc:ChargeIndicator='false'][normalize-space(cac:TaxCategory/cbc:ID)='E']/xs:decimal(cbc:Amount))) * 100) div 100))) or (exists(//cac:CreditNoteLine) and (xs:decimal(../cbc:TaxableAmount) = (round((sum(../../../cac:CreditNoteLine[normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='E']/xs:decimal(cbc:LineExtensionAmount)) + sum(../../../cac:AllowanceCharge[cbc:ChargeIndicator='true'][normalize-space(cac:TaxCategory/cbc:ID)='E']/xs:decimal(cbc:Amount)) - sum(../../../cac:AllowanceCharge[cbc:ChargeIndicator='false'][normalize-space(cac:TaxCategory/cbc:ID)='E']/xs:decimal(cbc:Amount))) * 100) div 100)))"/>
  <param name="BR-E-09" value="../cbc:TaxAmount = 0"/>
  
  <param name="BR-CO-04" value="(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)"/>
  <param name="BR-CO-10" value="(xs:decimal(cbc:LineExtensionAmount) = (round(sum(//cac:InvoiceLine/xs:decimal(cbc:LineExtensionAmount)) * 100) div 100)) or (xs:decimal(cbc:LineExtensionAmount) = (round(sum(//cac:CreditNoteLine/xs:decimal(cbc:LineExtensionAmount)) * 100) div 100))"/>
  <param name="BR-CO-11" value="xs:decimal(cbc:AllowanceTotalAmount) = (round(sum(../cac:AllowanceCharge[cbc:ChargeIndicator='false']/xs:decimal(cbc:Amount)) * 10 * 10) div 100) or not(cbc:AllowanceTotalAmount)"/>
  <param name="BR-CO-12" value="xs:decimal(cbc:ChargeTotalAmount) = (round(sum(../cac:AllowanceCharge[cbc:ChargeIndicator='true']/xs:decimal(cbc:Amount)) * 10 * 10) div 100) or not(cbc:ChargeTotalAmount)"/>
  <param name="BR-CO-13" value="((cbc:ChargeTotalAmount) and (cbc:AllowanceTotalAmount) and (xs:decimal(cbc:TaxExclusiveAmount) = round((xs:decimal(cbc:LineExtensionAmount) + xs:decimal(cbc:ChargeTotalAmount) - xs:decimal(cbc:AllowanceTotalAmount)) * 10 * 10) div 100 ))  or (not(cbc:ChargeTotalAmount) and (cbc:AllowanceTotalAmount) and (xs:decimal(cbc:TaxExclusiveAmount) = round((xs:decimal(cbc:LineExtensionAmount) - xs:decimal(cbc:AllowanceTotalAmount)) * 10 * 10 ) div 100)) or ((cbc:ChargeTotalAmount) and not(cbc:AllowanceTotalAmount) and (xs:decimal(cbc:TaxExclusiveAmount) = round((xs:decimal(cbc:LineExtensionAmount) + xs:decimal(cbc:ChargeTotalAmount)) * 10 * 10 ) div 100)) or (not(cbc:ChargeTotalAmount) and not(cbc:AllowanceTotalAmount) and (xs:decimal(cbc:TaxExclusiveAmount) = xs:decimal(cbc:LineExtensionAmount)))"/>
  <param name="BR-CO-14" value="(xs:decimal(child::cbc:TaxAmount)= round((sum(cac:TaxSubtotal/xs:decimal(cbc:TaxAmount)) * 10 * 10)) div 100) or not(cac:TaxSubtotal)"/>
  <param name="BR-CO-15" value="every $Currency in cbc:DocumentCurrencyCode satisfies cac:LegalMonetaryTotal/xs:decimal(cbc:TaxInclusiveAmount) = round( (cac:LegalMonetaryTotal/xs:decimal(cbc:TaxExclusiveAmount) + cac:TaxTotal/xs:decimal(cbc:TaxAmount[@currencyID=$Currency])) * 10 * 10) div 100"/>
  <param name="BR-CO-16" value="(xs:decimal(cbc:PrepaidAmount) and not(xs:decimal(cbc:PayableRoundingAmount)) and (xs:decimal(cbc:PayableAmount) = (round((xs:decimal(cbc:TaxInclusiveAmount) - xs:decimal(cbc:PrepaidAmount)) * 10 * 10) div 100))) or (not(xs:decimal(cbc:PrepaidAmount)) and not(xs:decimal(cbc:PayableRoundingAmount)) and xs:decimal(cbc:PayableAmount) = xs:decimal(cbc:TaxInclusiveAmount)) or (xs:decimal(cbc:PrepaidAmount) and xs:decimal(cbc:PayableRoundingAmount) and ((round((xs:decimal(cbc:PayableAmount) - xs:decimal(cbc:PayableRoundingAmount)) * 10 * 10) div 100) = (round((xs:decimal(cbc:TaxInclusiveAmount) - xs:decimal(cbc:PrepaidAmount)) * 10 * 10) div 100))) or (not(xs:decimal(cbc:PrepaidAmount)) and xs:decimal(cbc:PayableRoundingAmount) and ((round((xs:decimal(cbc:PayableAmount) - xs:decimal(cbc:PayableRoundingAmount)) * 10 * 10) div 100) = xs:decimal(cbc:TaxInclusiveAmount))) "/>
  <param name="BR-CO-17" value="(round(cac:TaxCategory/xs:decimal(cbc:Percent)) = 0 and (round(xs:decimal(cbc:TaxAmount)) = 0)) or (round(cac:TaxCategory/xs:decimal(cbc:Percent)) != 0 and (xs:decimal(cbc:TaxAmount) = round(xs:decimal(cbc:TaxableAmount) * (cac:TaxCategory/xs:decimal(cbc:Percent) div 100) * 10 * 10) div 100 )) or (not(exists(cac:TaxCategory/xs:decimal(cbc:Percent))) and (round(xs:decimal(cbc:TaxAmount)) = 0))"/>
  <param name="BR-CO-25" value="((. &gt; 0) and (exists(//cbc:DueDate) or exists(//cac:PaymentTerms/cbc:Note))) or (. &lt;= 0)"/>

  <param name="UBL-SR-19" value="(count(cac:PartyName/cbc:Name) &lt;= 1) and ((cac:PartyName/cbc:Name) != (../cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationName))"/>
  <param name="UBL-SR-20" value="(count(cac:PartyIdentification/cbc:ID) &lt;= 1) and ((cac:PartyName/cbc:Name) != (../cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationName))"/>
  <param name="UBL-SR-21" value="(count(cac:PartyLegalEntity/cbc:CompanyID) &lt;= 1) and ((cac:PartyName/cbc:Name) != (../cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationName))"/>

  <param name="Amount_due" value="cac:LegalMonetaryTotal/cbc:PayableAmount"/>
  <param name="Document_totals " value="cac:LegalMonetaryTotal"/>
  <param name="Payee" value="cac:PayeeParty"/>
  <param name="Invoice " value="//ubl:Invoice | //cn:CreditNote"/>
  <param name="Invoice_Line " value="cac:InvoiceLine | cac:CreditNoteLine"/>
  <param name="Tax_Total" value="//ubl:Invoice/cac:TaxTotal | //cn:CreditNote/cac:TaxTotal"/>
  <param name="VAT_breakdown " value="cac:TaxTotal/cac:TaxSubtotal"/>
  <param name="VATAA_Allowance" value="cac:AllowanceCharge[cbc:ChargeIndicator='false']/cac:TaxCategory[normalize-space(cbc:ID)='AA']"/>
  <param name="VATAA_Charge" value="cac:AllowanceCharge[cbc:ChargeIndicator='true']/cac:TaxCategory[normalize-space(cbc:ID)='AA']"/>
  <param name="VATAA_Line" value="cac:InvoiceLine/cac:Item/cac:ClassifiedTaxCategory[normalize-space(cbc:ID) = 'AA'] | cac:CreditNoteLine/cac:Item/cac:ClassifiedTaxCategory[normalize-space(cbc:ID) = 'AA']"/>
  <param name="VATAA" value="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory[normalize-space(cbc:ID) = 'AA']"/>
  <param name="VATS_Allowance" value="cac:AllowanceCharge[cbc:ChargeIndicator='false']/cac:TaxCategory[normalize-space(cbc:ID)='S']"/>
  <param name="VATS_Charge" value="cac:AllowanceCharge[cbc:ChargeIndicator='true']/cac:TaxCategory[normalize-space(cbc:ID)='S']"/>
  <param name="VATS_Line" value="cac:InvoiceLine/cac:Item/cac:ClassifiedTaxCategory[normalize-space(cbc:ID) = 'S'] | cac:CreditNoteLine/cac:Item/cac:ClassifiedTaxCategory[normalize-space(cbc:ID) = 'S']"/>
  <param name="VATS" value="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory[normalize-space(cbc:ID) = 'S']"/>
  <param name="VATE_Allowance" value="cac:AllowanceCharge[cbc:ChargeIndicator='false']/cac:TaxCategory[normalize-space(cbc:ID)='E']"/>
  <param name="VATE_Charge" value="cac:AllowanceCharge[cbc:ChargeIndicator='true']/cac:TaxCategory[normalize-space(cbc:ID)='E']"/>
  <param name="VATE_Line" value="cac:InvoiceLine/cac:Item/cac:ClassifiedTaxCategory[normalize-space(cbc:ID) = 'E'] | cac:CreditNoteLine/cac:Item/cac:ClassifiedTaxCategory[normalize-space(cbc:ID) = 'E']"/>
  <param name="VATE" value="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory[normalize-space(cbc:ID) = 'E']"/>
</pattern>
