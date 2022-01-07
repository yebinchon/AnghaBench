
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct timer_list {int dummy; } ;
struct TYPE_3__ {int tsr; int tcr; scalar_t__ watchdog_enabled; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int wdt_timer; } ;


 int KVM_REQ_PENDING_TIMER ;
 int KVM_REQ_WATCHDOG ;
 int TCR_WRC_MASK ;
 int TSR_ENW ;
 int TSR_WIS ;
 TYPE_2__ arch ;
 int arm_next_watchdog (struct kvm_vcpu*) ;
 int cmpxchg (int*,int,int) ;
 struct kvm_vcpu* from_timer (int ,struct timer_list*,int ) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int kvm_vcpu_kick (struct kvm_vcpu*) ;
 int smp_wmb () ;
 struct kvm_vcpu* vcpu ;

void kvmppc_watchdog_func(struct timer_list *t)
{
 struct kvm_vcpu *vcpu = from_timer(vcpu, t, arch.wdt_timer);
 u32 tsr, new_tsr;
 int final;

 do {
  new_tsr = tsr = vcpu->arch.tsr;
  final = 0;


  if (tsr & TSR_ENW) {
   if (tsr & TSR_WIS)
    final = 1;
   else
    new_tsr = tsr | TSR_WIS;
  } else {
   new_tsr = tsr | TSR_ENW;
  }
 } while (cmpxchg(&vcpu->arch.tsr, tsr, new_tsr) != tsr);

 if (new_tsr & TSR_WIS) {
  smp_wmb();
  kvm_make_request(KVM_REQ_PENDING_TIMER, vcpu);
  kvm_vcpu_kick(vcpu);
 }





 if (final && (vcpu->arch.tcr & TCR_WRC_MASK) &&
     vcpu->arch.watchdog_enabled) {
  smp_wmb();
  kvm_make_request(KVM_REQ_WATCHDOG, vcpu);
  kvm_vcpu_kick(vcpu);
 }







 if (!final)
  arm_next_watchdog(vcpu);
}
