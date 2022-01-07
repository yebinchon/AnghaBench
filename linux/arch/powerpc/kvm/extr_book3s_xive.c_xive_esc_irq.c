
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq_pending; int xive_esc_on; scalar_t__ ceded; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int kvmppc_fast_vcpu_kick (struct kvm_vcpu*) ;
 int smp_mb () ;
 int smp_wmb () ;

__attribute__((used)) static irqreturn_t xive_esc_irq(int irq, void *data)
{
 struct kvm_vcpu *vcpu = data;

 vcpu->arch.irq_pending = 1;
 smp_mb();
 if (vcpu->arch.ceded)
  kvmppc_fast_vcpu_kick(vcpu);
 vcpu->arch.xive_esc_on = 0;


 smp_wmb();

 return IRQ_HANDLED;
}
