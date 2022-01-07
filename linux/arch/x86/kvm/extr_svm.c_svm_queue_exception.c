
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


typedef int u32 ;
struct vcpu_svm {unsigned long int3_injected; TYPE_6__* vmcb; scalar_t__ int3_rip; int vcpu; } ;
struct TYPE_7__ {unsigned int nr; int has_error_code; int injected; int error_code; } ;
struct TYPE_8__ {TYPE_1__ exception; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_11__ {unsigned int event_inj; int event_inj_err; } ;
struct TYPE_9__ {scalar_t__ base; } ;
struct TYPE_10__ {TYPE_3__ cs; } ;
struct TYPE_12__ {TYPE_5__ control; TYPE_4__ save; } ;


 unsigned int BP_VECTOR ;
 unsigned int SVM_EVTINJ_TYPE_EXEPT ;
 unsigned int SVM_EVTINJ_VALID ;
 unsigned int SVM_EVTINJ_VALID_ERR ;
 int kvm_deliver_exception_payload (int *) ;
 unsigned long kvm_rip_read (int *) ;
 scalar_t__ nested_svm_check_exception (struct vcpu_svm*,unsigned int,int,int ) ;
 int nrips ;
 int skip_emulated_instruction (int *) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void svm_queue_exception(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);
 unsigned nr = vcpu->arch.exception.nr;
 bool has_error_code = vcpu->arch.exception.has_error_code;
 bool reinject = vcpu->arch.exception.injected;
 u32 error_code = vcpu->arch.exception.error_code;





 if (!reinject &&
     nested_svm_check_exception(svm, nr, has_error_code, error_code))
  return;

 kvm_deliver_exception_payload(&svm->vcpu);

 if (nr == BP_VECTOR && !nrips) {
  unsigned long rip, old_rip = kvm_rip_read(&svm->vcpu);
  (void)skip_emulated_instruction(&svm->vcpu);
  rip = kvm_rip_read(&svm->vcpu);
  svm->int3_rip = rip + svm->vmcb->save.cs.base;
  svm->int3_injected = rip - old_rip;
 }

 svm->vmcb->control.event_inj = nr
  | SVM_EVTINJ_VALID
  | (has_error_code ? SVM_EVTINJ_VALID_ERR : 0)
  | SVM_EVTINJ_TYPE_EXEPT;
 svm->vmcb->control.event_inj_err = error_code;
}
