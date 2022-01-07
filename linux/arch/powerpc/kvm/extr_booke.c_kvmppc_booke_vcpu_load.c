
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_vcpu {int cpu; } ;
struct TYPE_3__ {struct kvm_vcpu* kvm_vcpu; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 TYPE_2__* current ;
 int smp_processor_id () ;

void kvmppc_booke_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
{
 vcpu->cpu = smp_processor_id();
 current->thread.kvm_vcpu = vcpu;
}
