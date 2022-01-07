
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_7__ {int pending; int injected; int has_error_code; unsigned int nr; int has_payload; unsigned long payload; scalar_t__ error_code; } ;
struct TYPE_8__ {TYPE_3__ exception; } ;
struct kvm_vcpu {TYPE_4__ arch; TYPE_2__* kvm; } ;
struct TYPE_5__ {int exception_payload_enabled; } ;
struct TYPE_6__ {TYPE_1__ arch; } ;


 scalar_t__ DF_VECTOR ;
 int EXCPT_BENIGN ;
 int EXCPT_CONTRIBUTORY ;
 int EXCPT_PF ;
 int KVM_REQ_EVENT ;
 int KVM_REQ_TRIPLE_FAULT ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int exception_class (unsigned int) ;
 int is_guest_mode (struct kvm_vcpu*) ;
 int is_protmode (struct kvm_vcpu*) ;
 int kvm_deliver_exception_payload (struct kvm_vcpu*) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;

__attribute__((used)) static void kvm_multiple_exception(struct kvm_vcpu *vcpu,
  unsigned nr, bool has_error, u32 error_code,
         bool has_payload, unsigned long payload, bool reinject)
{
 u32 prev_nr;
 int class1, class2;

 kvm_make_request(KVM_REQ_EVENT, vcpu);

 if (!vcpu->arch.exception.pending && !vcpu->arch.exception.injected) {
 queue:
  if (has_error && !is_protmode(vcpu))
   has_error = 0;
  if (reinject) {
   WARN_ON_ONCE(vcpu->arch.exception.pending);
   vcpu->arch.exception.injected = 1;
   if (WARN_ON_ONCE(has_payload)) {




    has_payload = 0;
    payload = 0;
   }
  } else {
   vcpu->arch.exception.pending = 1;
   vcpu->arch.exception.injected = 0;
  }
  vcpu->arch.exception.has_error_code = has_error;
  vcpu->arch.exception.nr = nr;
  vcpu->arch.exception.error_code = error_code;
  vcpu->arch.exception.has_payload = has_payload;
  vcpu->arch.exception.payload = payload;
  if (!vcpu->kvm->arch.exception_payload_enabled ||
      !is_guest_mode(vcpu))
   kvm_deliver_exception_payload(vcpu);
  return;
 }


 prev_nr = vcpu->arch.exception.nr;
 if (prev_nr == DF_VECTOR) {

  kvm_make_request(KVM_REQ_TRIPLE_FAULT, vcpu);
  return;
 }
 class1 = exception_class(prev_nr);
 class2 = exception_class(nr);
 if ((class1 == EXCPT_CONTRIBUTORY && class2 == EXCPT_CONTRIBUTORY)
  || (class1 == EXCPT_PF && class2 != EXCPT_BENIGN)) {





  vcpu->arch.exception.pending = 1;
  vcpu->arch.exception.injected = 0;
  vcpu->arch.exception.has_error_code = 1;
  vcpu->arch.exception.nr = DF_VECTOR;
  vcpu->arch.exception.error_code = 0;
  vcpu->arch.exception.has_payload = 0;
  vcpu->arch.exception.payload = 0;
 } else



  goto queue;
}
