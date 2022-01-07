
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
typedef int acpi_status ;


 scalar_t__ ACPI_UINT32_MAX ;
 int ACPI_UINT64_MAX ;
 int AE_NUMERIC_OVERFLOW ;
 int AE_OK ;
 int acpi_gbl_integer_bit_width ;
 int acpi_ut_short_divide (int ,scalar_t__,scalar_t__*,int *) ;

__attribute__((used)) static acpi_status
acpi_ut_strtoul_multiply64(u64 multiplicand, u32 base, u64 *out_product)
{
 u64 product;
 u64 quotient;



 *out_product = 0;
 if (!multiplicand || !base) {
  return (AE_OK);
 }
 acpi_ut_short_divide(ACPI_UINT64_MAX, base, &quotient, ((void*)0));
 if (multiplicand > quotient) {
  return (AE_NUMERIC_OVERFLOW);
 }

 product = multiplicand * base;



 if ((acpi_gbl_integer_bit_width == 32) && (product > ACPI_UINT32_MAX)) {
  return (AE_NUMERIC_OVERFLOW);
 }

 *out_product = product;
 return (AE_OK);
}
