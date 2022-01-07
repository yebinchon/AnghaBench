
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pte; int * pmd; int * pud; int * p4d; } ;
struct kimage {TYPE_1__ arch; } ;


 int free_page (unsigned long) ;

__attribute__((used)) static void free_transition_pgtable(struct kimage *image)
{
 free_page((unsigned long)image->arch.p4d);
 image->arch.p4d = ((void*)0);
 free_page((unsigned long)image->arch.pud);
 image->arch.pud = ((void*)0);
 free_page((unsigned long)image->arch.pmd);
 image->arch.pmd = ((void*)0);
 free_page((unsigned long)image->arch.pte);
 image->arch.pte = ((void*)0);
}
