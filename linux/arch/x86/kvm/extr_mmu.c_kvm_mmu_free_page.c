
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int direct; } ;
struct kvm_mmu_page {scalar_t__ gfns; TYPE_1__ role; scalar_t__ spt; int link; int hash_link; } ;


 int MMU_WARN_ON (int) ;
 int free_page (unsigned long) ;
 int hlist_del (int *) ;
 int is_empty_shadow_page (scalar_t__) ;
 int kmem_cache_free (int ,struct kvm_mmu_page*) ;
 int list_del (int *) ;
 int mmu_page_header_cache ;

__attribute__((used)) static void kvm_mmu_free_page(struct kvm_mmu_page *sp)
{
 MMU_WARN_ON(!is_empty_shadow_page(sp->spt));
 hlist_del(&sp->hash_link);
 list_del(&sp->link);
 free_page((unsigned long)sp->spt);
 if (!sp->role.direct)
  free_page((unsigned long)sp->gfns);
 kmem_cache_free(mmu_page_header_cache, sp);
}
