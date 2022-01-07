
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 char* acpi_gbl_hex_to_ascii ;
 int acpi_ut_short_shift_right (int,int ,int*) ;

char acpi_ut_hex_to_ascii_char(u64 integer, u32 position)
{
 u64 index;

 acpi_ut_short_shift_right(integer, position, &index);
 return (acpi_gbl_hex_to_ascii[index & 0xF]);
}
