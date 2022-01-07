
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_hpt_info {int dummy; } ;
struct TYPE_4__ {int order; scalar_t__ virt; } ;
struct TYPE_3__ {int mmu_ready; int mmu_setup_lock; int need_tlb_flush; TYPE_2__ hpt; int vcpus_running; } ;
struct kvm {TYPE_1__ arch; } ;


 long EBUSY ;
 scalar_t__ atomic_read (int *) ;
 int cpumask_setall (int *) ;
 scalar_t__ kvm_is_radix (struct kvm*) ;
 long kvmppc_allocate_hpt (struct kvm_hpt_info*,int) ;
 int kvmppc_free_hpt (TYPE_2__*) ;
 int kvmppc_rmap_reset (struct kvm*) ;
 int kvmppc_set_hpt (struct kvm*,struct kvm_hpt_info*) ;
 long kvmppc_switch_mmu_to_hpt (struct kvm*) ;
 int memset (void*,int ,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smp_mb () ;

long kvmppc_alloc_reset_hpt(struct kvm *kvm, int order)
{
 long err = -EBUSY;
 struct kvm_hpt_info info;

 mutex_lock(&kvm->arch.mmu_setup_lock);
 if (kvm->arch.mmu_ready) {
  kvm->arch.mmu_ready = 0;

  smp_mb();
  if (atomic_read(&kvm->arch.vcpus_running)) {
   kvm->arch.mmu_ready = 1;
   goto out;
  }
 }
 if (kvm_is_radix(kvm)) {
  err = kvmppc_switch_mmu_to_hpt(kvm);
  if (err)
   goto out;
 }

 if (kvm->arch.hpt.order == order) {



  memset((void *)kvm->arch.hpt.virt, 0, 1ul << order);



  kvmppc_rmap_reset(kvm);
  err = 0;
  goto out;
 }

 if (kvm->arch.hpt.virt) {
  kvmppc_free_hpt(&kvm->arch.hpt);
  kvmppc_rmap_reset(kvm);
 }

 err = kvmppc_allocate_hpt(&info, order);
 if (err < 0)
  goto out;
 kvmppc_set_hpt(kvm, &info);

out:
 if (err == 0)

  cpumask_setall(&kvm->arch.need_tlb_flush);

 mutex_unlock(&kvm->arch.mmu_setup_lock);
 return err;
}
