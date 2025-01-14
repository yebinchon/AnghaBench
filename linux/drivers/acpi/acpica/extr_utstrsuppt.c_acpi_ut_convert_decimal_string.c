
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_DECIMAL_OVERFLOW ;
 int AE_OK ;
 int acpi_ut_insert_digit (int *,int,char) ;
 int isdigit (char) ;

acpi_status acpi_ut_convert_decimal_string(char *string, u64 *return_value_ptr)
{
 u64 accumulated_value = 0;
 acpi_status status = AE_OK;



 while (*string) {



  if (!isdigit(*string)) {
   break;
  }



  status = acpi_ut_insert_digit(&accumulated_value, 10, *string);
  if (ACPI_FAILURE(status)) {
   status = AE_DECIMAL_OVERFLOW;
   break;
  }

  string++;
 }



 *return_value_ptr = accumulated_value;
 return (status);
}
