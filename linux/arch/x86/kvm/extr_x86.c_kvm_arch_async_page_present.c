
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct x86_exception {int error_code_valid; int nested_page_fault; int async_page_fault; int address; scalar_t__ error_code; scalar_t__ vector; } ;
struct TYPE_7__ {int msr_val; int halted; } ;
struct TYPE_5__ {int pending; scalar_t__ nr; int injected; int has_error_code; int has_payload; scalar_t__ payload; scalar_t__ error_code; } ;
struct TYPE_8__ {int mp_state; TYPE_3__ apf; TYPE_1__ exception; } ;
struct kvm_vcpu {TYPE_4__ arch; } ;
struct TYPE_6__ {int token; int gfn; } ;
struct kvm_async_pf {TYPE_2__ arch; int gva; scalar_t__ wakeup_all; } ;


 int KVM_ASYNC_PF_ENABLED ;
 int KVM_MP_STATE_RUNNABLE ;
 scalar_t__ KVM_PV_REASON_PAGE_NOT_PRESENT ;
 int KVM_PV_REASON_PAGE_READY ;
 scalar_t__ PF_VECTOR ;
 int apf_get_user (struct kvm_vcpu*,scalar_t__*) ;
 int apf_put_user (struct kvm_vcpu*,int ) ;
 int kvm_del_async_pf_gfn (struct kvm_vcpu*,int ) ;
 int kvm_inject_page_fault (struct kvm_vcpu*,struct x86_exception*) ;
 int trace_kvm_async_pf_ready (int ,int ) ;

void kvm_arch_async_page_present(struct kvm_vcpu *vcpu,
     struct kvm_async_pf *work)
{
 struct x86_exception fault;
 u32 val;

 if (work->wakeup_all)
  work->arch.token = ~0;
 else
  kvm_del_async_pf_gfn(vcpu, work->arch.gfn);
 trace_kvm_async_pf_ready(work->arch.token, work->gva);

 if (vcpu->arch.apf.msr_val & KVM_ASYNC_PF_ENABLED &&
     !apf_get_user(vcpu, &val)) {
  if (val == KVM_PV_REASON_PAGE_NOT_PRESENT &&
      vcpu->arch.exception.pending &&
      vcpu->arch.exception.nr == PF_VECTOR &&
      !apf_put_user(vcpu, 0)) {
   vcpu->arch.exception.injected = 0;
   vcpu->arch.exception.pending = 0;
   vcpu->arch.exception.nr = 0;
   vcpu->arch.exception.has_error_code = 0;
   vcpu->arch.exception.error_code = 0;
   vcpu->arch.exception.has_payload = 0;
   vcpu->arch.exception.payload = 0;
  } else if (!apf_put_user(vcpu, KVM_PV_REASON_PAGE_READY)) {
   fault.vector = PF_VECTOR;
   fault.error_code_valid = 1;
   fault.error_code = 0;
   fault.nested_page_fault = 0;
   fault.address = work->arch.token;
   fault.async_page_fault = 1;
   kvm_inject_page_fault(vcpu, &fault);
  }
 }
 vcpu->arch.apf.halted = 0;
 vcpu->arch.mp_state = KVM_MP_STATE_RUNNABLE;
}
