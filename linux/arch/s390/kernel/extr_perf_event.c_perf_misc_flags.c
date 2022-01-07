
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int int_code; scalar_t__ int_parm; int * gprs; } ;


 scalar_t__ CPU_MF_INT_SF_PRA ;
 unsigned long PERF_RECORD_MISC_KERNEL ;
 unsigned long PERF_RECORD_MISC_USER ;
 scalar_t__ is_in_guest (struct pt_regs*) ;
 unsigned long perf_misc_flags_sf (struct pt_regs*) ;
 unsigned long perf_misc_guest_flags (struct pt_regs*) ;
 scalar_t__ user_mode (struct pt_regs*) ;

unsigned long perf_misc_flags(struct pt_regs *regs)
{




 if (regs->int_code == 0x1407 && regs->int_parm == CPU_MF_INT_SF_PRA)
  if (!regs->gprs[15])
   return perf_misc_flags_sf(regs);

 if (is_in_guest(regs))
  return perf_misc_guest_flags(regs);

 return user_mode(regs) ? PERF_RECORD_MISC_USER
          : PERF_RECORD_MISC_KERNEL;
}
