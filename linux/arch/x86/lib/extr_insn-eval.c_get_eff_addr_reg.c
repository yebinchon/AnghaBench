
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {int value; int nbytes; } ;
struct insn {int addr_bytes; TYPE_1__ modrm; } ;


 int EINVAL ;
 int REG_TYPE_RM ;
 int X86_MODRM_MOD (int ) ;
 int get_reg_offset (struct insn*,struct pt_regs*,int ) ;
 int insn_get_modrm (struct insn*) ;
 int regs_get_register (struct pt_regs*,int) ;

__attribute__((used)) static int get_eff_addr_reg(struct insn *insn, struct pt_regs *regs,
       int *regoff, long *eff_addr)
{
 insn_get_modrm(insn);

 if (!insn->modrm.nbytes)
  return -EINVAL;

 if (X86_MODRM_MOD(insn->modrm.value) != 3)
  return -EINVAL;

 *regoff = get_reg_offset(insn, regs, REG_TYPE_RM);
 if (*regoff < 0)
  return -EINVAL;


 if (insn->addr_bytes == 2)
  *eff_addr = regs_get_register(regs, *regoff) & 0xffff;
 else if (insn->addr_bytes == 4)
  *eff_addr = regs_get_register(regs, *regoff) & 0xffffffff;
 else
  *eff_addr = regs_get_register(regs, *regoff);

 return 0;
}
