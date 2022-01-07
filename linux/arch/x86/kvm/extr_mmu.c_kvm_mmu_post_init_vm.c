
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nx_lpage_recovery_thread; } ;
struct kvm {TYPE_1__ arch; } ;


 int kthread_unpark (int ) ;
 int kvm_nx_lpage_recovery_worker ;
 int kvm_vm_create_worker_thread (struct kvm*,int ,int ,char*,int *) ;

int kvm_mmu_post_init_vm(struct kvm *kvm)
{
 int err;

 err = kvm_vm_create_worker_thread(kvm, kvm_nx_lpage_recovery_worker, 0,
       "kvm-nx-lpage-recovery",
       &kvm->arch.nx_lpage_recovery_thread);
 if (!err)
  kthread_unpark(kvm->arch.nx_lpage_recovery_thread);

 return err;
}
