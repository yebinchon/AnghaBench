
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct revmap_entry {int dummy; } ;
struct page {int dummy; } ;
struct kvm_hpt_info {unsigned long order; unsigned long virt; int cma; struct revmap_entry* rev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long PAGE_SHIFT ;
 unsigned long PPC_MAX_HPT_ORDER ;
 unsigned long PPC_MIN_HPT_ORDER ;
 int __GFP_NOWARN ;
 int __GFP_RETRY_MAYFAIL ;
 int __GFP_ZERO ;
 unsigned long __get_free_pages (int,unsigned long) ;
 int array_size (unsigned long,int) ;
 int free_pages (unsigned long,unsigned long) ;
 struct page* kvm_alloc_hpt_cma (unsigned long) ;
 int kvm_free_hpt_cma (struct page*,int) ;
 int memset (void*,int ,unsigned long) ;
 int page_to_pfn (struct page*) ;
 scalar_t__ pfn_to_kaddr (int ) ;
 struct revmap_entry* vmalloc (int ) ;

int kvmppc_allocate_hpt(struct kvm_hpt_info *info, u32 order)
{
 unsigned long hpt = 0;
 int cma = 0;
 struct page *page = ((void*)0);
 struct revmap_entry *rev;
 unsigned long npte;

 if ((order < PPC_MIN_HPT_ORDER) || (order > PPC_MAX_HPT_ORDER))
  return -EINVAL;

 page = kvm_alloc_hpt_cma(1ul << (order - PAGE_SHIFT));
 if (page) {
  hpt = (unsigned long)pfn_to_kaddr(page_to_pfn(page));
  memset((void *)hpt, 0, (1ul << order));
  cma = 1;
 }

 if (!hpt)
  hpt = __get_free_pages(GFP_KERNEL|__GFP_ZERO|__GFP_RETRY_MAYFAIL
           |__GFP_NOWARN, order - PAGE_SHIFT);

 if (!hpt)
  return -ENOMEM;


 npte = 1ul << (order - 4);


 rev = vmalloc(array_size(npte, sizeof(struct revmap_entry)));
 if (!rev) {
  if (cma)
   kvm_free_hpt_cma(page, 1 << (order - PAGE_SHIFT));
  else
   free_pages(hpt, order - PAGE_SHIFT);
  return -ENOMEM;
 }

 info->order = order;
 info->virt = hpt;
 info->cma = cma;
 info->rev = rev;

 return 0;
}
