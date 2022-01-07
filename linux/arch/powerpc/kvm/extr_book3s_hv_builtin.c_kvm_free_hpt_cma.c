
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int cma_release (int ,struct page*,unsigned long) ;
 int kvm_cma ;

void kvm_free_hpt_cma(struct page *page, unsigned long nr_pages)
{
 cma_release(kvm_cma, page, nr_pages);
}
