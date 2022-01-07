
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int preempted_in_kernel; int last_host_tsc; } ;
struct kvm_vcpu {TYPE_1__ arch; TYPE_2__* kvm; scalar_t__ preempted; } ;
struct TYPE_6__ {int (* vcpu_put ) (struct kvm_vcpu*) ;int (* get_cpl ) (struct kvm_vcpu*) ;} ;
struct TYPE_5__ {int srcu; } ;


 int kvm_steal_time_set_preempted (struct kvm_vcpu*) ;
 TYPE_3__* kvm_x86_ops ;
 int pagefault_disable () ;
 int pagefault_enable () ;
 int rdtsc () ;
 int set_debugreg (int ,int) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;
 int stub1 (struct kvm_vcpu*) ;
 int stub2 (struct kvm_vcpu*) ;

void kvm_arch_vcpu_put(struct kvm_vcpu *vcpu)
{
 int idx;

 if (vcpu->preempted)
  vcpu->arch.preempted_in_kernel = !kvm_x86_ops->get_cpl(vcpu);
 pagefault_disable();




 idx = srcu_read_lock(&vcpu->kvm->srcu);
 kvm_steal_time_set_preempted(vcpu);
 srcu_read_unlock(&vcpu->kvm->srcu, idx);
 pagefault_enable();
 kvm_x86_ops->vcpu_put(vcpu);
 vcpu->arch.last_host_tsc = rdtsc();





 set_debugreg(0, 6);
}
