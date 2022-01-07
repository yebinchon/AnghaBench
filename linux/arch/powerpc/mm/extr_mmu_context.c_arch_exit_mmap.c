
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int context; } ;


 int pte_frag_destroy (void*) ;
 void* pte_frag_get (int *) ;

void arch_exit_mmap(struct mm_struct *mm)
{
 void *frag = pte_frag_get(&mm->context);

 if (frag)
  pte_frag_destroy(frag);
}
