
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;


 size_t AML_TYPE_EXEC_6A_0T_1R ;
 int * acpi_gbl_argument_count ;

u8 acpi_ps_get_argument_count(u32 op_type)
{

 if (op_type <= AML_TYPE_EXEC_6A_0T_1R) {
  return (acpi_gbl_argument_count[op_type]);
 }

 return (0);
}
