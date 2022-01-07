
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* apic; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct hrtimer {int dummy; } ;
struct TYPE_4__ {struct hrtimer timer; } ;
struct TYPE_5__ {TYPE_1__ lapic_timer; } ;


 int HRTIMER_MODE_ABS_HARD ;
 scalar_t__ hrtimer_cancel (struct hrtimer*) ;
 int hrtimer_start_expires (struct hrtimer*,int ) ;
 scalar_t__ kvm_can_post_timer_interrupt (struct kvm_vcpu*) ;
 int lapic_in_kernel (struct kvm_vcpu*) ;

void __kvm_migrate_apic_timer(struct kvm_vcpu *vcpu)
{
 struct hrtimer *timer;

 if (!lapic_in_kernel(vcpu) ||
  kvm_can_post_timer_interrupt(vcpu))
  return;

 timer = &vcpu->arch.apic->lapic_timer.timer;
 if (hrtimer_cancel(timer))
  hrtimer_start_expires(timer, HRTIMER_MODE_ABS_HARD);
}
