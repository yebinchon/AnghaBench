
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ insn_byte_t ;
typedef int const insn_attr_t ;


 scalar_t__ INAT_LSTPFX_MAX ;
 scalar_t__ X86_VEX_M_MAX ;
 int const*** inat_avx_tables ;
 int inat_is_group (int const) ;

insn_attr_t inat_get_avx_attribute(insn_byte_t opcode, insn_byte_t vex_m,
       insn_byte_t vex_p)
{
 const insn_attr_t *table;
 if (vex_m > X86_VEX_M_MAX || vex_p > INAT_LSTPFX_MAX)
  return 0;

 table = inat_avx_tables[vex_m][0];
 if (!table)
  return 0;
 if (!inat_is_group(table[opcode]) && vex_p) {

  table = inat_avx_tables[vex_m][vex_p];
  if (!table)
   return 0;
 }
 return table[opcode];
}
