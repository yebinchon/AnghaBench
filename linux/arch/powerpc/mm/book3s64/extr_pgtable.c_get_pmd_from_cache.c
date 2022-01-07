
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* pmd_frag; } ;
struct mm_struct {int page_table_lock; TYPE_1__ context; } ;
typedef int pmd_t ;


 unsigned long PAGE_MASK ;
 int PMD_FRAG_NR ;
 int PMD_FRAG_SIZE ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static pmd_t *get_pmd_from_cache(struct mm_struct *mm)
{
 void *pmd_frag, *ret;

 if (PMD_FRAG_NR == 1)
  return ((void*)0);

 spin_lock(&mm->page_table_lock);
 ret = mm->context.pmd_frag;
 if (ret) {
  pmd_frag = ret + PMD_FRAG_SIZE;



  if (((unsigned long)pmd_frag & ~PAGE_MASK) == 0)
   pmd_frag = ((void*)0);
  mm->context.pmd_frag = pmd_frag;
 }
 spin_unlock(&mm->page_table_lock);
 return (pmd_t *)ret;
}
