
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned long HPT_ALIGN_PAGES ;
 scalar_t__ KVM_CMA_CHUNK_ORDER ;
 scalar_t__ PAGE_SHIFT ;
 int VM_BUG_ON (int) ;
 struct page* cma_alloc (int ,unsigned long,scalar_t__,int) ;
 int kvm_cma ;
 scalar_t__ order_base_2 (unsigned long) ;

struct page *kvm_alloc_hpt_cma(unsigned long nr_pages)
{
 VM_BUG_ON(order_base_2(nr_pages) < KVM_CMA_CHUNK_ORDER - PAGE_SHIFT);

 return cma_alloc(kvm_cma, nr_pages, order_base_2(HPT_ALIGN_PAGES),
    0);
}
