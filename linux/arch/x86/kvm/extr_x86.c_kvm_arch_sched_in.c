
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int l1tf_flush_l1d; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int (* sched_in ) (struct kvm_vcpu*,int) ;} ;


 TYPE_2__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,int) ;

void kvm_arch_sched_in(struct kvm_vcpu *vcpu, int cpu)
{
 vcpu->arch.l1tf_flush_l1d = 1;
 kvm_x86_ops->sched_in(vcpu, cpu);
}
