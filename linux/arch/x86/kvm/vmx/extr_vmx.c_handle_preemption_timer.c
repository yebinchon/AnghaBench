
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vcpu_vmx {TYPE_1__* loaded_vmcs; int req_immediate_exit; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int hv_timer_soft_disabled; } ;


 int kvm_lapic_expired_hv_timer (struct kvm_vcpu*) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int unlikely (int ) ;

__attribute__((used)) static int handle_preemption_timer(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);

 if (!vmx->req_immediate_exit &&
     !unlikely(vmx->loaded_vmcs->hv_timer_soft_disabled))
  kvm_lapic_expired_hv_timer(vcpu);

 return 1;
}
