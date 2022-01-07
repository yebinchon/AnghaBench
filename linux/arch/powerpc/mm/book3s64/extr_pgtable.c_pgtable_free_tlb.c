
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_gather {int dummy; } ;


 void pgtable_free (void*,int) ;

void pgtable_free_tlb(struct mmu_gather *tlb, void *table, int index)
{
 return pgtable_free(table, index);
}
