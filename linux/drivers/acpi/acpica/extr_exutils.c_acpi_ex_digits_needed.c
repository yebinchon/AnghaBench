
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int acpi_ut_short_divide (scalar_t__,int,scalar_t__*,int *) ;
 int ex_digits_needed ;
 int return_UINT32 (int) ;

__attribute__((used)) static u32 acpi_ex_digits_needed(u64 value, u32 base)
{
 u32 num_digits;
 u64 current_value;

 ACPI_FUNCTION_TRACE(ex_digits_needed);



 if (value == 0) {
  return_UINT32(1);
 }

 current_value = value;
 num_digits = 0;



 while (current_value) {
  (void)acpi_ut_short_divide(current_value, base, &current_value,
        ((void*)0));
  num_digits++;
 }

 return_UINT32(num_digits);
}
