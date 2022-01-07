
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int page_table_lock; int context; } ;
typedef int pte_t ;


 unsigned long PAGE_MASK ;
 int PTE_FRAG_NR ;
 int PTE_FRAG_SIZE ;
 void* pte_frag_get (int *) ;
 int pte_frag_set (int *,void*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static pte_t *get_pte_from_cache(struct mm_struct *mm)
{
 void *pte_frag, *ret;

 if (PTE_FRAG_NR == 1)
  return ((void*)0);

 spin_lock(&mm->page_table_lock);
 ret = pte_frag_get(&mm->context);
 if (ret) {
  pte_frag = ret + PTE_FRAG_SIZE;



  if (((unsigned long)pte_frag & ~PAGE_MASK) == 0)
   pte_frag = ((void*)0);
  pte_frag_set(&mm->context, pte_frag);
 }
 spin_unlock(&mm->page_table_lock);
 return (pte_t *)ret;
}
