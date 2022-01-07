
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* is_user_mode ) () ;scalar_t__ (* is_in_guest ) () ;} ;


 int PERF_RECORD_MISC_GUEST_KERNEL ;
 int PERF_RECORD_MISC_GUEST_USER ;
 int PERF_RECORD_MISC_KERNEL ;
 int PERF_RECORD_MISC_USER ;
 TYPE_1__* perf_guest_cbs ;
 scalar_t__ stub1 () ;
 scalar_t__ stub2 () ;
 scalar_t__ user_mode (struct pt_regs*) ;

unsigned long perf_misc_flags(struct pt_regs *regs)
{
 int misc = 0;


 if (perf_guest_cbs && perf_guest_cbs->is_in_guest()) {
  if (perf_guest_cbs->is_user_mode())
   misc |= PERF_RECORD_MISC_GUEST_USER;
  else
   misc |= PERF_RECORD_MISC_GUEST_KERNEL;
 } else {
  if (user_mode(regs))
   misc |= PERF_RECORD_MISC_USER;
  else
   misc |= PERF_RECORD_MISC_KERNEL;
 }

 return misc;
}
