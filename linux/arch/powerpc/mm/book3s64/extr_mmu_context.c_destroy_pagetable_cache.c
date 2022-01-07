
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* pmd_frag; void* pte_frag; } ;
struct mm_struct {TYPE_1__ context; } ;


 int pmd_frag_destroy (void*) ;
 int pte_frag_destroy (void*) ;

__attribute__((used)) static void destroy_pagetable_cache(struct mm_struct *mm)
{
 void *frag;

 frag = mm->context.pte_frag;
 if (frag)
  pte_frag_destroy(frag);

 frag = mm->context.pmd_frag;
 if (frag)
  pmd_frag_destroy(frag);
 return;
}
