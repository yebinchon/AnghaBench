
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct insn {int dummy; } ;


 int REG_TYPE_RM ;
 int get_reg_offset (struct insn*,struct pt_regs*,int ) ;

int insn_get_modrm_rm_off(struct insn *insn, struct pt_regs *regs)
{
 return get_reg_offset(insn, regs, REG_TYPE_RM);
}
