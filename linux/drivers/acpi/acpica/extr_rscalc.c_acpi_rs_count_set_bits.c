
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;


 int ACPI_FUNCTION_ENTRY () ;

__attribute__((used)) static u8 acpi_rs_count_set_bits(u16 bit_field)
{
 u8 bits_set;

 ACPI_FUNCTION_ENTRY();

 for (bits_set = 0; bit_field; bits_set++) {



  bit_field &= (u16) (bit_field - 1);
 }

 return (bits_set);
}
