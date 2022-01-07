
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {long ip; } ;
struct TYPE_4__ {int value; } ;
struct TYPE_3__ {int value; int nbytes; } ;
struct insn {int addr_bytes; long length; TYPE_2__ displacement; TYPE_1__ modrm; } ;


 int EDOM ;
 int EINVAL ;
 int REG_TYPE_RM ;
 int X86_MODRM_MOD (int ) ;
 int get_reg_offset (struct insn*,struct pt_regs*,int ) ;
 int insn_get_modrm (struct insn*) ;
 long regs_get_register (struct pt_regs*,int) ;
 scalar_t__ user_64bit_mode (struct pt_regs*) ;

__attribute__((used)) static int get_eff_addr_modrm(struct insn *insn, struct pt_regs *regs,
         int *regoff, long *eff_addr)
{
 long tmp;

 if (insn->addr_bytes != 8 && insn->addr_bytes != 4)
  return -EINVAL;

 insn_get_modrm(insn);

 if (!insn->modrm.nbytes)
  return -EINVAL;

 if (X86_MODRM_MOD(insn->modrm.value) > 2)
  return -EINVAL;

 *regoff = get_reg_offset(insn, regs, REG_TYPE_RM);






 if (*regoff == -EDOM) {
  if (user_64bit_mode(regs))
   tmp = regs->ip + insn->length;
  else
   tmp = 0;
 } else if (*regoff < 0) {
  return -EINVAL;
 } else {
  tmp = regs_get_register(regs, *regoff);
 }

 if (insn->addr_bytes == 4) {
  int addr32 = (int)(tmp & 0xffffffff) + insn->displacement.value;

  *eff_addr = addr32 & 0xffffffff;
 } else {
  *eff_addr = tmp + insn->displacement.value;
 }

 return 0;
}
