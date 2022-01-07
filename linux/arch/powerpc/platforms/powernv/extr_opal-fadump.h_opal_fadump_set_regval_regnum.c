
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
typedef scalar_t__ u32 ;
struct pt_regs {void* ccr; void* msr; void* nip; void* dsisr; void* dar; void* xer; void* link; void* ctr; void** gpr; } ;





 scalar_t__ HDAT_FADUMP_REG_TYPE_GPR ;






__attribute__((used)) static inline void opal_fadump_set_regval_regnum(struct pt_regs *regs,
       u32 reg_type, u32 reg_num,
       u64 reg_val)
{
 if (reg_type == HDAT_FADUMP_REG_TYPE_GPR) {
  if (reg_num < 32)
   regs->gpr[reg_num] = reg_val;
  return;
 }

 switch (reg_num) {
 case 132:
  regs->ctr = reg_val;
  break;
 case 129:
  regs->link = reg_val;
  break;
 case 128:
  regs->xer = reg_val;
  break;
 case 131:
  regs->dar = reg_val;
  break;
 case 130:
  regs->dsisr = reg_val;
  break;
 case 133:
  regs->nip = reg_val;
  break;
 case 134:
  regs->msr = reg_val;
  break;
 case 135:
  regs->ccr = reg_val;
  break;
 }
}
