
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tsr; int wdt_lock; int wdt_timer; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int KVM_REQ_WATCHDOG ;
 unsigned long NEXT_TIMER_MAX_DELTA ;
 int TSR_ENW ;
 int TSR_WIS ;
 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int kvm_clear_request (int ,struct kvm_vcpu*) ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long watchdog_next_timeout (struct kvm_vcpu*) ;

__attribute__((used)) static void arm_next_watchdog(struct kvm_vcpu *vcpu)
{
 unsigned long nr_jiffies;
 unsigned long flags;





 if ((vcpu->arch.tsr & (TSR_ENW | TSR_WIS)) != (TSR_ENW | TSR_WIS))
  kvm_clear_request(KVM_REQ_WATCHDOG, vcpu);

 spin_lock_irqsave(&vcpu->arch.wdt_lock, flags);
 nr_jiffies = watchdog_next_timeout(vcpu);




 if (nr_jiffies < NEXT_TIMER_MAX_DELTA)
  mod_timer(&vcpu->arch.wdt_timer, jiffies + nr_jiffies);
 else
  del_timer(&vcpu->arch.wdt_timer);
 spin_unlock_irqrestore(&vcpu->arch.wdt_lock, flags);
}
