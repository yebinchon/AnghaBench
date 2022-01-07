
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mmu_valid_gen; } ;
struct kvm {int mmu_lock; TYPE_1__ arch; int slots_lock; } ;


 int kvm_reload_remote_mmus (struct kvm*) ;
 int kvm_zap_obsolete_pages (struct kvm*) ;
 int lockdep_assert_held (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_kvm_mmu_zap_all_fast (struct kvm*) ;

__attribute__((used)) static void kvm_mmu_zap_all_fast(struct kvm *kvm)
{
 lockdep_assert_held(&kvm->slots_lock);

 spin_lock(&kvm->mmu_lock);
 trace_kvm_mmu_zap_all_fast(kvm);
 kvm->arch.mmu_valid_gen = kvm->arch.mmu_valid_gen ? 0 : 1;
 kvm_reload_remote_mmus(kvm);

 kvm_zap_obsolete_pages(kvm);
 spin_unlock(&kvm->mmu_lock);
}
