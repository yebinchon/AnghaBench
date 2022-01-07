
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int guest_mmu; int root_mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int free_mmu_pages (int *) ;
 int kvm_mmu_unload (struct kvm_vcpu*) ;
 int mmu_free_memory_caches (struct kvm_vcpu*) ;

void kvm_mmu_destroy(struct kvm_vcpu *vcpu)
{
 kvm_mmu_unload(vcpu);
 free_mmu_pages(&vcpu->arch.root_mmu);
 free_mmu_pages(&vcpu->arch.guest_mmu);
 mmu_free_memory_caches(vcpu);
}
