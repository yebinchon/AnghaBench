
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pte1; int * pte0; int * pmd1; int * pmd0; int * pgd; } ;
struct kimage {TYPE_1__ arch; } ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PGD_ALLOCATION_ORDER ;
 int __GFP_ZERO ;
 scalar_t__ __get_free_pages (int,int ) ;
 scalar_t__ get_zeroed_page (int) ;

__attribute__((used)) static int machine_kexec_alloc_page_tables(struct kimage *image)
{
 image->arch.pgd = (pgd_t *)__get_free_pages(GFP_KERNEL | __GFP_ZERO,
          PGD_ALLOCATION_ORDER);




 image->arch.pte0 = (pte_t *)get_zeroed_page(GFP_KERNEL);
 image->arch.pte1 = (pte_t *)get_zeroed_page(GFP_KERNEL);
 if (!image->arch.pgd ||



     !image->arch.pte0 || !image->arch.pte1) {
  return -ENOMEM;
 }
 return 0;
}
