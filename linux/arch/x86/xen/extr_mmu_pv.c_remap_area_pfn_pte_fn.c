
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct remap_data {TYPE_1__* mmu_update; scalar_t__ no_translate; int * pfn; scalar_t__ contiguous; int prot; } ;
typedef int pte_t ;
struct TYPE_4__ {int maddr; } ;
struct TYPE_3__ {int val; int ptr; } ;


 int MMU_NORMAL_PT_UPDATE ;
 int MMU_PT_UPDATE_NO_TRANSLATE ;
 int mfn_pte (int ,int ) ;
 int pte_mkspecial (int ) ;
 int pte_val_ma (int ) ;
 TYPE_2__ virt_to_machine (int *) ;

__attribute__((used)) static int remap_area_pfn_pte_fn(pte_t *ptep, unsigned long addr, void *data)
{
 struct remap_data *rmd = data;
 pte_t pte = pte_mkspecial(mfn_pte(*rmd->pfn, rmd->prot));





 if (rmd->contiguous)
  (*rmd->pfn)++;
 else
  rmd->pfn++;

 rmd->mmu_update->ptr = virt_to_machine(ptep).maddr;
 rmd->mmu_update->ptr |= rmd->no_translate ?
  MMU_PT_UPDATE_NO_TRANSLATE :
  MMU_NORMAL_PT_UPDATE;
 rmd->mmu_update->val = pte_val_ma(pte);
 rmd->mmu_update++;

 return 0;
}
