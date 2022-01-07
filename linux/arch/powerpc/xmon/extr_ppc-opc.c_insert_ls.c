
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppc_cpu_t ;


 int PPC_OPCODE_POWER4 ;
 char* _ (char*) ;

__attribute__((used)) static unsigned long
insert_ls (unsigned long insn,
    long value,
    ppc_cpu_t dialect,
    const char **errmsg)
{

  if (((insn >> 1) & 0x3ff) == 598)
    {
      long max_lvalue = (dialect & PPC_OPCODE_POWER4) ? 2 : 1;
      if (value > max_lvalue)
 {
   *errmsg = _("illegal L operand value");
   return insn;
 }
    }

  return insn | ((value & 0x3) << 21);
}
