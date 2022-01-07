
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pte_list_desc {scalar_t__ more; int ** sptes; } ;
struct kvm_rmap_head {unsigned long val; } ;


 int PTE_LIST_EXT ;
 int mmu_free_pte_list_desc (struct pte_list_desc*) ;

__attribute__((used)) static void
pte_list_desc_remove_entry(struct kvm_rmap_head *rmap_head,
      struct pte_list_desc *desc, int i,
      struct pte_list_desc *prev_desc)
{
 int j;

 for (j = PTE_LIST_EXT - 1; !desc->sptes[j] && j > i; --j)
  ;
 desc->sptes[i] = desc->sptes[j];
 desc->sptes[j] = ((void*)0);
 if (j != 0)
  return;
 if (!prev_desc && !desc->more)
  rmap_head->val = (unsigned long)desc->sptes[0];
 else
  if (prev_desc)
   prev_desc->more = desc->more;
  else
   rmap_head->val = (unsigned long)desc->more | 1;
 mmu_free_pte_list_desc(desc);
}
