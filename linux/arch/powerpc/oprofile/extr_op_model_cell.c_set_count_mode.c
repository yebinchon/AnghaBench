
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {int count_mode; } ;
struct TYPE_4__ {TYPE_1__ pm_cntrl; } ;


 int CBE_COUNT_ALL_MODES ;
 int CBE_COUNT_HYPERVISOR_MODE ;
 int CBE_COUNT_PROBLEM_MODE ;
 int CBE_COUNT_SUPERVISOR_MODE ;
 TYPE_2__ pm_regs ;

__attribute__((used)) static inline void
set_count_mode(u32 kernel, u32 user)
{





 if (kernel) {
  if (user)
   pm_regs.pm_cntrl.count_mode = CBE_COUNT_ALL_MODES;
  else
   pm_regs.pm_cntrl.count_mode =
    CBE_COUNT_SUPERVISOR_MODE;
 } else {
  if (user)
   pm_regs.pm_cntrl.count_mode = CBE_COUNT_PROBLEM_MODE;
  else
   pm_regs.pm_cntrl.count_mode =
    CBE_COUNT_HYPERVISOR_MODE;
 }
}
