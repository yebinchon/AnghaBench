
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int __be64 ;


 int GFP_ATOMIC ;
 scalar_t__ PAGE_SHIFT ;
 int __GFP_NOWARN ;
 struct page* alloc_pages_node (int,int,scalar_t__) ;
 int memset (int *,int ,unsigned long) ;
 int * page_address (struct page*) ;
 int pr_err (char*,unsigned int) ;

__attribute__((used)) static __be64 *pnv_alloc_tce_level(int nid, unsigned int shift)
{
 struct page *tce_mem = ((void*)0);
 __be64 *addr;

 tce_mem = alloc_pages_node(nid, GFP_ATOMIC | __GFP_NOWARN,
   shift - PAGE_SHIFT);
 if (!tce_mem) {
  pr_err("Failed to allocate a TCE memory, level shift=%d\n",
    shift);
  return ((void*)0);
 }
 addr = page_address(tce_mem);
 memset(addr, 0, 1UL << shift);

 return addr;
}
