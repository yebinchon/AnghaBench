
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nx_lpage_recovery_thread; } ;
struct kvm {TYPE_1__ arch; } ;


 int kthread_stop (scalar_t__) ;

void kvm_mmu_pre_destroy_vm(struct kvm *kvm)
{
 if (kvm->arch.nx_lpage_recovery_thread)
  kthread_stop(kvm->arch.nx_lpage_recovery_thread);
}
