
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_mmu {scalar_t__ lm_root; scalar_t__ pae_root; } ;


 int free_page (unsigned long) ;

__attribute__((used)) static void free_mmu_pages(struct kvm_mmu *mmu)
{
 free_page((unsigned long)mmu->pae_root);
 free_page((unsigned long)mmu->lm_root);
}
