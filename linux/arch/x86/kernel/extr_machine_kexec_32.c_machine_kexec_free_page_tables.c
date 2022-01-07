
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pte1; int * pte0; int * pmd1; int * pmd0; int * pgd; } ;
struct kimage {TYPE_1__ arch; } ;


 int PGD_ALLOCATION_ORDER ;
 int free_page (unsigned long) ;
 int free_pages (unsigned long,int ) ;

__attribute__((used)) static void machine_kexec_free_page_tables(struct kimage *image)
{
 free_pages((unsigned long)image->arch.pgd, PGD_ALLOCATION_ORDER);
 image->arch.pgd = ((void*)0);






 free_page((unsigned long)image->arch.pte0);
 image->arch.pte0 = ((void*)0);
 free_page((unsigned long)image->arch.pte1);
 image->arch.pte1 = ((void*)0);
}
