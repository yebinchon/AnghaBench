
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int exit_required; unsigned long long intercept; } ;
struct TYPE_7__ {int hflags; } ;
struct TYPE_12__ {TYPE_1__ arch; } ;
struct vcpu_svm {TYPE_5__* vmcb; TYPE_3__ nested; TYPE_6__ vcpu; } ;
struct TYPE_10__ {int rip; } ;
struct TYPE_8__ {scalar_t__ exit_info_2; scalar_t__ exit_info_1; int exit_code; } ;
struct TYPE_11__ {TYPE_4__ save; TYPE_2__ control; } ;


 int HF_HIF_MASK ;
 int HF_VINTR_MASK ;
 int SVM_EXIT_INTR ;
 int is_guest_mode (TYPE_6__*) ;
 int trace_kvm_nested_intr_vmexit (int ) ;

__attribute__((used)) static inline bool nested_svm_intr(struct vcpu_svm *svm)
{
 if (!is_guest_mode(&svm->vcpu))
  return 1;

 if (!(svm->vcpu.arch.hflags & HF_VINTR_MASK))
  return 1;

 if (!(svm->vcpu.arch.hflags & HF_HIF_MASK))
  return 0;






 if (svm->nested.exit_required)
  return 0;

 svm->vmcb->control.exit_code = SVM_EXIT_INTR;
 svm->vmcb->control.exit_info_1 = 0;
 svm->vmcb->control.exit_info_2 = 0;

 if (svm->nested.intercept & 1ULL) {






  svm->nested.exit_required = 1;
  trace_kvm_nested_intr_vmexit(svm->vmcb->save.rip);
  return 0;
 }

 return 1;
}
