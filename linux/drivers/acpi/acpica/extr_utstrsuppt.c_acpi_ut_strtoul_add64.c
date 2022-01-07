
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
typedef int acpi_status ;


 scalar_t__ ACPI_UINT32_MAX ;
 scalar_t__ ACPI_UINT64_MAX ;
 int AE_NUMERIC_OVERFLOW ;
 int AE_OK ;
 int acpi_gbl_integer_bit_width ;

__attribute__((used)) static acpi_status acpi_ut_strtoul_add64(u64 addend1, u32 digit, u64 *out_sum)
{
 u64 sum;



 if ((addend1 > 0) && (digit > (ACPI_UINT64_MAX - addend1))) {
  return (AE_NUMERIC_OVERFLOW);
 }

 sum = addend1 + digit;



 if ((acpi_gbl_integer_bit_width == 32) && (sum > ACPI_UINT32_MAX)) {
  return (AE_NUMERIC_OVERFLOW);
 }

 *out_sum = sum;
 return (AE_OK);
}
