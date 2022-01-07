
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 unsigned long PERF_RECORD_MISC_GUEST_KERNEL ;
 unsigned long PERF_RECORD_MISC_GUEST_USER ;
 scalar_t__ guest_is_user_mode (struct pt_regs*) ;

__attribute__((used)) static unsigned long perf_misc_guest_flags(struct pt_regs *regs)
{
 return guest_is_user_mode(regs) ? PERF_RECORD_MISC_GUEST_USER
     : PERF_RECORD_MISC_GUEST_KERNEL;
}
