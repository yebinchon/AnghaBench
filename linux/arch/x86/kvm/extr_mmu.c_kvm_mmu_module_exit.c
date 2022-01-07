
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kvm_total_used_mmu_pages ;
 int mmu_audit_disable () ;
 int mmu_destroy_caches () ;
 int mmu_shrinker ;
 int percpu_counter_destroy (int *) ;
 int unregister_shrinker (int *) ;

void kvm_mmu_module_exit(void)
{
 mmu_destroy_caches();
 percpu_counter_destroy(&kvm_total_used_mmu_pages);
 unregister_shrinker(&mmu_shrinker);
 mmu_audit_disable();
}
