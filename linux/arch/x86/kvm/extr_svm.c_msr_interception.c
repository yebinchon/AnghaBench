
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vcpu_svm {TYPE_2__* vmcb; } ;
struct TYPE_3__ {scalar_t__ exit_info_1; } ;
struct TYPE_4__ {TYPE_1__ control; } ;


 int rdmsr_interception (struct vcpu_svm*) ;
 int wrmsr_interception (struct vcpu_svm*) ;

__attribute__((used)) static int msr_interception(struct vcpu_svm *svm)
{
 if (svm->vmcb->control.exit_info_1)
  return wrmsr_interception(svm);
 else
  return rdmsr_interception(svm);
}
