
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct pt_regs {int * regs; int pc; int sp; int compat_lr; int compat_sp; } ;


 scalar_t__ PERF_REG_ARM64_LR ;
 scalar_t__ PERF_REG_ARM64_MAX ;
 scalar_t__ PERF_REG_ARM64_PC ;
 scalar_t__ PERF_REG_ARM64_SP ;
 scalar_t__ WARN_ON_ONCE (int) ;
 scalar_t__ compat_user_mode (struct pt_regs*) ;

u64 perf_reg_value(struct pt_regs *regs, int idx)
{
 if (WARN_ON_ONCE((u32)idx >= PERF_REG_ARM64_MAX))
  return 0;






 if (compat_user_mode(regs)) {
  if ((u32)idx == PERF_REG_ARM64_SP)
   return regs->compat_sp;
  if ((u32)idx == PERF_REG_ARM64_LR)
   return regs->compat_lr;
 }

 if ((u32)idx == PERF_REG_ARM64_SP)
  return regs->sp;

 if ((u32)idx == PERF_REG_ARM64_PC)
  return regs->pc;

 return regs->regs[idx];
}
