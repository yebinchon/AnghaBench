
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pte_list_desc {int dummy; } ;


 int kmem_cache_free (int ,struct pte_list_desc*) ;
 int pte_list_desc_cache ;

__attribute__((used)) static void mmu_free_pte_list_desc(struct pte_list_desc *pte_list_desc)
{
 kmem_cache_free(pte_list_desc_cache, pte_list_desc);
}
