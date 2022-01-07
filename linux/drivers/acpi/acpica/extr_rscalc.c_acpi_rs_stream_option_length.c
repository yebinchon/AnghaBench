
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int ACPI_FUNCTION_ENTRY () ;
 scalar_t__ ACPI_ROUND_UP_TO_NATIVE_WORD (scalar_t__) ;

__attribute__((used)) static u32
acpi_rs_stream_option_length(u32 resource_length,
        u32 minimum_aml_resource_length)
{
 u32 string_length = 0;

 ACPI_FUNCTION_ENTRY();
 if (resource_length > minimum_aml_resource_length) {



  string_length =
      resource_length - minimum_aml_resource_length - 1;
 }





 return ((u32) ACPI_ROUND_UP_TO_NATIVE_WORD(string_length));
}
