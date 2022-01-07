
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct openpic {TYPE_1__* dst; } ;
struct TYPE_4__ {size_t irq_cpu_id; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int * vcpu; } ;


 int BUG_ON (int) ;

void kvmppc_mpic_disconnect_vcpu(struct openpic *opp, struct kvm_vcpu *vcpu)
{
 BUG_ON(!opp->dst[vcpu->arch.irq_cpu_id].vcpu);

 opp->dst[vcpu->arch.irq_cpu_id].vcpu = ((void*)0);
}
