
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_IS_OCTAL_DIGIT (char) ;
 int AE_OCTAL_OVERFLOW ;
 int AE_OK ;
 int acpi_ut_insert_digit (int *,int,char) ;

acpi_status acpi_ut_convert_octal_string(char *string, u64 *return_value_ptr)
{
 u64 accumulated_value = 0;
 acpi_status status = AE_OK;



 while (*string) {



  if (!(ACPI_IS_OCTAL_DIGIT(*string))) {
   break;
  }



  status = acpi_ut_insert_digit(&accumulated_value, 8, *string);
  if (ACPI_FAILURE(status)) {
   status = AE_OCTAL_OVERFLOW;
   break;
  }

  string++;
 }



 *return_value_ptr = accumulated_value;
 return (status);
}
