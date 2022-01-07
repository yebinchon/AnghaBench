
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tcr; int tsr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int TCR_DIE ;
 int TCR_WIE ;
 int TSR_DIS ;
 int TSR_WIS ;
 int kvmppc_core_dequeue_dec (struct kvm_vcpu*) ;
 int kvmppc_core_dequeue_watchdog (struct kvm_vcpu*) ;
 int kvmppc_core_queue_dec (struct kvm_vcpu*) ;
 int kvmppc_core_queue_watchdog (struct kvm_vcpu*) ;

__attribute__((used)) static void update_timer_ints(struct kvm_vcpu *vcpu)
{
 if ((vcpu->arch.tcr & TCR_DIE) && (vcpu->arch.tsr & TSR_DIS))
  kvmppc_core_queue_dec(vcpu);
 else
  kvmppc_core_dequeue_dec(vcpu);

 if ((vcpu->arch.tcr & TCR_WIE) && (vcpu->arch.tsr & TSR_WIS))
  kvmppc_core_queue_watchdog(vcpu);
 else
  kvmppc_core_dequeue_watchdog(vcpu);
}
