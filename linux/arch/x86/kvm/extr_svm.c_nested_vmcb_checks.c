
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long long intercept; scalar_t__ asid; int nested_ctl; } ;
struct vmcb {TYPE_1__ control; } ;


 unsigned long long INTERCEPT_VMRUN ;
 int SVM_NESTED_CTL_NP_ENABLE ;
 int npt_enabled ;

__attribute__((used)) static bool nested_vmcb_checks(struct vmcb *vmcb)
{
 if ((vmcb->control.intercept & (1ULL << INTERCEPT_VMRUN)) == 0)
  return 0;

 if (vmcb->control.asid == 0)
  return 0;

 if ((vmcb->control.nested_ctl & SVM_NESTED_CTL_NP_ENABLE) &&
     !npt_enabled)
  return 0;

 return 1;
}
