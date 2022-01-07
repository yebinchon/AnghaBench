
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int acpi_ut_ascii_char_to_hex (int) ;
 int acpi_ut_strtoul_add64 (int ,int ,int *) ;
 int acpi_ut_strtoul_multiply64 (int ,int ,int *) ;

__attribute__((used)) static acpi_status
acpi_ut_insert_digit(u64 *accumulated_value, u32 base, int ascii_digit)
{
 acpi_status status;
 u64 product;



 status = acpi_ut_strtoul_multiply64(*accumulated_value, base, &product);
 if (ACPI_FAILURE(status)) {
  return (status);
 }



 status =
     acpi_ut_strtoul_add64(product,
      acpi_ut_ascii_char_to_hex(ascii_digit),
      accumulated_value);

 return (status);
}
