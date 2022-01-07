
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppc_cpu_t ;


 int PPC_OP (unsigned long) ;
 char* _ (char*) ;
 int valid_bo (long,int ,int ) ;

__attribute__((used)) static unsigned long
insert_bo (unsigned long insn,
    long value,
    ppc_cpu_t dialect,
    const char **errmsg)
{
  if (!valid_bo (value, dialect, 0))
    *errmsg = _("invalid conditional option");
  else if (PPC_OP (insn) == 19 && (insn & 0x400) && ! (value & 4))
    *errmsg = _("invalid counter access");
  return insn | ((value & 0x1f) << 21);
}
