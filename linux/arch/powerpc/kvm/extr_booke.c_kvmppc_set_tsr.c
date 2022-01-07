
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int tsr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int TSR_ENW ;
 int TSR_WIS ;
 int arm_next_watchdog (struct kvm_vcpu*) ;
 int update_timer_ints (struct kvm_vcpu*) ;

__attribute__((used)) static void kvmppc_set_tsr(struct kvm_vcpu *vcpu, u32 new_tsr)
{
 u32 old_tsr = vcpu->arch.tsr;

 vcpu->arch.tsr = new_tsr;

 if ((old_tsr ^ vcpu->arch.tsr) & (TSR_ENW | TSR_WIS))
  arm_next_watchdog(vcpu);

 update_timer_ints(vcpu);
}
