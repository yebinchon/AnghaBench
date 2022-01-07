
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int apic_base; struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int timer; } ;
struct kvm_lapic {scalar_t__ regs; int sw_enabled; TYPE_1__ lapic_timer; } ;


 int MSR_IA32_APICBASE_ENABLE ;
 int apic_hw_disabled ;
 int apic_sw_disabled ;
 int free_page (unsigned long) ;
 int hrtimer_cancel (int *) ;
 int kfree (struct kvm_lapic*) ;
 int static_key_slow_dec_deferred (int *) ;

void kvm_free_lapic(struct kvm_vcpu *vcpu)
{
 struct kvm_lapic *apic = vcpu->arch.apic;

 if (!vcpu->arch.apic)
  return;

 hrtimer_cancel(&apic->lapic_timer.timer);

 if (!(vcpu->arch.apic_base & MSR_IA32_APICBASE_ENABLE))
  static_key_slow_dec_deferred(&apic_hw_disabled);

 if (!apic->sw_enabled)
  static_key_slow_dec_deferred(&apic_sw_disabled);

 if (apic->regs)
  free_page((unsigned long)apic->regs);

 kfree(apic);
}
