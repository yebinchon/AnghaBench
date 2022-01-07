
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
 int clear_bits (int,int *) ;
 int update_timer_ints (struct kvm_vcpu*) ;

void kvmppc_clr_tsr_bits(struct kvm_vcpu *vcpu, u32 tsr_bits)
{
 clear_bits(tsr_bits, &vcpu->arch.tsr);





 if (tsr_bits & (TSR_ENW | TSR_WIS))
  arm_next_watchdog(vcpu);

 update_timer_ints(vcpu);
}
