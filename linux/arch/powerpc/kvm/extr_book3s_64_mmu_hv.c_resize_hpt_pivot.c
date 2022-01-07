
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_hpt_info {int dummy; } ;
struct kvm_resize_hpt {struct kvm_hpt_info hpt; struct kvm* kvm; } ;
struct TYPE_2__ {struct kvm_hpt_info hpt; } ;
struct kvm {int srcu; int mmu_lock; TYPE_1__ arch; } ;


 int CPU_FTR_ARCH_300 ;
 scalar_t__ cpu_has_feature (int ) ;
 int kvmppc_set_hpt (struct kvm*,struct kvm_hpt_info*) ;
 int kvmppc_setup_partition_table (struct kvm*) ;
 int resize_hpt_debug (struct kvm_resize_hpt*,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_srcu_expedited (int *) ;

__attribute__((used)) static void resize_hpt_pivot(struct kvm_resize_hpt *resize)
{
 struct kvm *kvm = resize->kvm;
 struct kvm_hpt_info hpt_tmp;




 resize_hpt_debug(resize, "resize_hpt_pivot()\n");

 spin_lock(&kvm->mmu_lock);
 asm volatile("ptesync" : : : "memory");

 hpt_tmp = kvm->arch.hpt;
 kvmppc_set_hpt(kvm, &resize->hpt);
 resize->hpt = hpt_tmp;

 spin_unlock(&kvm->mmu_lock);

 synchronize_srcu_expedited(&kvm->srcu);

 if (cpu_has_feature(CPU_FTR_ARCH_300))
  kvmppc_setup_partition_table(kvm);

 resize_hpt_debug(resize, "resize_hpt_pivot() done\n");
}
