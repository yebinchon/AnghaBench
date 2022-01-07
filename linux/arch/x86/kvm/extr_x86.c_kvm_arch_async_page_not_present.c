
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x86_exception {int error_code_valid; int nested_page_fault; int async_page_fault; int address; scalar_t__ error_code; int vector; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int token; int gfn; } ;
struct kvm_async_pf {TYPE_1__ arch; int gva; } ;


 int KVM_PV_REASON_PAGE_NOT_PRESENT ;
 int KVM_REQ_APF_HALT ;
 int PF_VECTOR ;
 int apf_put_user (struct kvm_vcpu*,int ) ;
 int kvm_add_async_pf_gfn (struct kvm_vcpu*,int ) ;
 scalar_t__ kvm_can_deliver_async_pf (struct kvm_vcpu*) ;
 int kvm_inject_page_fault (struct kvm_vcpu*,struct x86_exception*) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int trace_kvm_async_pf_not_present (int ,int ) ;

void kvm_arch_async_page_not_present(struct kvm_vcpu *vcpu,
         struct kvm_async_pf *work)
{
 struct x86_exception fault;

 trace_kvm_async_pf_not_present(work->arch.token, work->gva);
 kvm_add_async_pf_gfn(vcpu, work->arch.gfn);

 if (kvm_can_deliver_async_pf(vcpu) &&
     !apf_put_user(vcpu, KVM_PV_REASON_PAGE_NOT_PRESENT)) {
  fault.vector = PF_VECTOR;
  fault.error_code_valid = 1;
  fault.error_code = 0;
  fault.nested_page_fault = 0;
  fault.address = work->arch.token;
  fault.async_page_fault = 1;
  kvm_inject_page_fault(vcpu, &fault);
 } else {
  kvm_make_request(KVM_REQ_APF_HALT, vcpu);
 }
}
