
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ virt; } ;
struct kvm_resize_hpt {TYPE_2__ hpt; int error; } ;
struct TYPE_3__ {struct kvm_resize_hpt* resize_hpt; int mmu_setup_lock; } ;
struct kvm {TYPE_1__ arch; } ;


 int EBUSY ;
 scalar_t__ WARN_ON (int) ;
 int kfree (struct kvm_resize_hpt*) ;
 int kvmppc_free_hpt (TYPE_2__*) ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static void resize_hpt_release(struct kvm *kvm, struct kvm_resize_hpt *resize)
{
 if (WARN_ON(!mutex_is_locked(&kvm->arch.mmu_setup_lock)))
  return;

 if (!resize)
  return;

 if (resize->error != -EBUSY) {
  if (resize->hpt.virt)
   kvmppc_free_hpt(&resize->hpt);
  kfree(resize);
 }

 if (kvm->arch.resize_hpt == resize)
  kvm->arch.resize_hpt = ((void*)0);
}
