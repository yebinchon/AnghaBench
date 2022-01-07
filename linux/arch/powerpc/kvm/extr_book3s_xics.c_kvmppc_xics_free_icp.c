
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq_type; int * icp; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int KVMPPC_IRQ_DEFAULT ;
 int kfree (int *) ;

void kvmppc_xics_free_icp(struct kvm_vcpu *vcpu)
{
 if (!vcpu->arch.icp)
  return;
 kfree(vcpu->arch.icp);
 vcpu->arch.icp = ((void*)0);
 vcpu->arch.irq_type = KVMPPC_IRQ_DEFAULT;
}
