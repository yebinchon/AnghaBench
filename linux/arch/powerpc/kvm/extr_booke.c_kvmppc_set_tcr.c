
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int tcr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int arm_next_watchdog (struct kvm_vcpu*) ;
 int update_timer_ints (struct kvm_vcpu*) ;

void kvmppc_set_tcr(struct kvm_vcpu *vcpu, u32 new_tcr)
{
 vcpu->arch.tcr = new_tcr;
 arm_next_watchdog(vcpu);
 update_timer_ints(vcpu);
}
