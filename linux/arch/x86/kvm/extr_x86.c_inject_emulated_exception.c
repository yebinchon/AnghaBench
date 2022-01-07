
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ vector; int error_code; scalar_t__ error_code_valid; } ;
struct x86_emulate_ctxt {TYPE_2__ exception; } ;
struct TYPE_3__ {struct x86_emulate_ctxt emulate_ctxt; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 scalar_t__ PF_VECTOR ;
 int kvm_propagate_fault (struct kvm_vcpu*,TYPE_2__*) ;
 int kvm_queue_exception (struct kvm_vcpu*,scalar_t__) ;
 int kvm_queue_exception_e (struct kvm_vcpu*,scalar_t__,int ) ;

__attribute__((used)) static bool inject_emulated_exception(struct kvm_vcpu *vcpu)
{
 struct x86_emulate_ctxt *ctxt = &vcpu->arch.emulate_ctxt;
 if (ctxt->exception.vector == PF_VECTOR)
  return kvm_propagate_fault(vcpu, &ctxt->exception);

 if (ctxt->exception.error_code_valid)
  kvm_queue_exception_e(vcpu, ctxt->exception.vector,
          ctxt->exception.error_code);
 else
  kvm_queue_exception(vcpu, ctxt->exception.vector);
 return 0;
}
