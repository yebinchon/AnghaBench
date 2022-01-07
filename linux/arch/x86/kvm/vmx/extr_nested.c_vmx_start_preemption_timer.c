
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int preemption_timer; } ;
struct vcpu_vmx {TYPE_1__ nested; } ;
struct TYPE_5__ {int virtual_tsc_khz; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_6__ {int vmx_preemption_timer_value; } ;


 int HRTIMER_MODE_REL ;
 int VMX_MISC_EMULATED_PREEMPTION_TIMER_RATE ;
 int do_div (int,int ) ;
 TYPE_3__* get_vmcs12 (struct kvm_vcpu*) ;
 int hrtimer_start (int *,int ,int ) ;
 int ns_to_ktime (int) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmx_preemption_timer_fn (int *) ;

__attribute__((used)) static void vmx_start_preemption_timer(struct kvm_vcpu *vcpu)
{
 u64 preemption_timeout = get_vmcs12(vcpu)->vmx_preemption_timer_value;
 struct vcpu_vmx *vmx = to_vmx(vcpu);





 if (preemption_timeout == 0) {
  vmx_preemption_timer_fn(&vmx->nested.preemption_timer);
  return;
 }

 if (vcpu->arch.virtual_tsc_khz == 0)
  return;

 preemption_timeout <<= VMX_MISC_EMULATED_PREEMPTION_TIMER_RATE;
 preemption_timeout *= 1000000;
 do_div(preemption_timeout, vcpu->arch.virtual_tsc_khz);
 hrtimer_start(&vmx->nested.preemption_timer,
        ns_to_ktime(preemption_timeout), HRTIMER_MODE_REL);
}
