
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {struct kvm* kvm; } ;
struct kvm_memory_slot {int dummy; } ;
struct TYPE_2__ {int rlock; } ;
struct kvm {unsigned long mmu_notifier_seq; TYPE_1__ mmu_lock; } ;


 long H_SUCCESS ;
 long H_TOO_HARD ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int SZ_4K ;
 long kvmppc_get_hpa (struct kvm_vcpu*,unsigned long,int,unsigned long*,struct kvm_memory_slot**) ;
 int kvmppc_update_dirty_map (struct kvm_memory_slot*,unsigned long,int ) ;
 int memcpy (void*,void*,int ) ;
 scalar_t__ mmu_notifier_retry (struct kvm*,unsigned long) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int smp_rmb () ;

__attribute__((used)) static long kvmppc_do_h_page_init_copy(struct kvm_vcpu *vcpu,
           unsigned long dest, unsigned long src)
{
 unsigned long dest_pa, src_pa, mmu_seq;
 struct kvm_memory_slot *dest_memslot;
 struct kvm *kvm = vcpu->kvm;
 long ret = H_SUCCESS;


 mmu_seq = kvm->mmu_notifier_seq;
 smp_rmb();

 ret = kvmppc_get_hpa(vcpu, dest, 1, &dest_pa, &dest_memslot);
 if (ret != H_SUCCESS)
  return ret;
 ret = kvmppc_get_hpa(vcpu, src, 0, &src_pa, ((void*)0));
 if (ret != H_SUCCESS)
  return ret;


 raw_spin_lock(&kvm->mmu_lock.rlock);
 if (mmu_notifier_retry(kvm, mmu_seq)) {
  ret = H_TOO_HARD;
  goto out_unlock;
 }


 memcpy((void *)dest_pa, (void *)src_pa, SZ_4K);

 kvmppc_update_dirty_map(dest_memslot, dest >> PAGE_SHIFT, PAGE_SIZE);

out_unlock:
 raw_spin_unlock(&kvm->mmu_lock.rlock);
 return ret;
}
