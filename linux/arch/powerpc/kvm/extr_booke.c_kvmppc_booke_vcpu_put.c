
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_vcpu {int cpu; } ;
struct TYPE_3__ {int * kvm_vcpu; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 TYPE_2__* current ;
 int kvmppc_clear_dbsr () ;

void kvmppc_booke_vcpu_put(struct kvm_vcpu *vcpu)
{
 current->thread.kvm_vcpu = ((void*)0);
 vcpu->cpu = -1;


 kvmppc_clear_dbsr();
}
