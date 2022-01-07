
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mmu_page_cache; int mmu_page_header_cache; } ;
struct kvm_vcpu {TYPE_3__* kvm; TYPE_1__ arch; } ;
struct kvm_mmu_page {int link; int mmu_valid_gen; void* spt; void* gfns; } ;
struct TYPE_5__ {int active_mmu_pages; int mmu_valid_gen; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;


 int kvm_mod_used_mmu_pages (TYPE_3__*,int) ;
 int list_add (int *,int *) ;
 void* mmu_memory_cache_alloc (int *) ;
 int set_page_private (int ,unsigned long) ;
 int virt_to_page (void*) ;

__attribute__((used)) static struct kvm_mmu_page *kvm_mmu_alloc_page(struct kvm_vcpu *vcpu, int direct)
{
 struct kvm_mmu_page *sp;

 sp = mmu_memory_cache_alloc(&vcpu->arch.mmu_page_header_cache);
 sp->spt = mmu_memory_cache_alloc(&vcpu->arch.mmu_page_cache);
 if (!direct)
  sp->gfns = mmu_memory_cache_alloc(&vcpu->arch.mmu_page_cache);
 set_page_private(virt_to_page(sp->spt), (unsigned long)sp);






 sp->mmu_valid_gen = vcpu->kvm->arch.mmu_valid_gen;
 list_add(&sp->link, &vcpu->kvm->arch.active_mmu_pages);
 kvm_mod_used_mmu_pages(vcpu->kvm, +1);
 return sp;
}
