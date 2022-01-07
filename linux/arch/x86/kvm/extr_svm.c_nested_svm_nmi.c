
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned long long intercept; int exit_required; } ;
struct vcpu_svm {TYPE_3__ nested; TYPE_2__* vmcb; int vcpu; } ;
struct TYPE_4__ {int exit_code; } ;
struct TYPE_5__ {TYPE_1__ control; } ;


 unsigned long long INTERCEPT_NMI ;
 int SVM_EXIT_NMI ;
 int is_guest_mode (int *) ;

__attribute__((used)) static inline bool nested_svm_nmi(struct vcpu_svm *svm)
{
 if (!is_guest_mode(&svm->vcpu))
  return 1;

 if (!(svm->nested.intercept & (1ULL << INTERCEPT_NMI)))
  return 1;

 svm->vmcb->control.exit_code = SVM_EXIT_NMI;
 svm->nested.exit_required = 1;

 return 0;
}
