
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int vcpu_id; } ;
struct kvm_timer {int hv_timer_in_use; int pending; int timer; int tscdeadline; } ;
struct kvm_lapic {struct kvm_vcpu* vcpu; struct kvm_timer lapic_timer; } ;
struct TYPE_2__ {scalar_t__ (* set_hv_timer ) (struct kvm_vcpu*,int ,int*) ;} ;


 int WARN_ON (int ) ;
 int apic_lvtt_period (struct kvm_lapic*) ;
 int apic_timer_expired (struct kvm_lapic*) ;
 scalar_t__ atomic_read (int *) ;
 int cancel_hv_timer (struct kvm_lapic*) ;
 int hrtimer_cancel (int *) ;
 TYPE_1__* kvm_x86_ops ;
 int preemptible () ;
 scalar_t__ stub1 (struct kvm_vcpu*,int ,int*) ;
 int trace_kvm_hv_timer_state (int ,int) ;

__attribute__((used)) static bool start_hv_timer(struct kvm_lapic *apic)
{
 struct kvm_timer *ktimer = &apic->lapic_timer;
 struct kvm_vcpu *vcpu = apic->vcpu;
 bool expired;

 WARN_ON(preemptible());
 if (!kvm_x86_ops->set_hv_timer)
  return 0;

 if (!ktimer->tscdeadline)
  return 0;

 if (kvm_x86_ops->set_hv_timer(vcpu, ktimer->tscdeadline, &expired))
  return 0;

 ktimer->hv_timer_in_use = 1;
 hrtimer_cancel(&ktimer->timer);






 if (!apic_lvtt_period(apic)) {




  if (atomic_read(&ktimer->pending)) {
   cancel_hv_timer(apic);
  } else if (expired) {
   apic_timer_expired(apic);
   cancel_hv_timer(apic);
  }
 }

 trace_kvm_hv_timer_state(vcpu->vcpu_id, ktimer->hv_timer_in_use);

 return 1;
}
