
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pte_t ;


 unsigned long PAGE_MASK ;
 scalar_t__ kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int * maybe_map (unsigned long,int) ;
 scalar_t__ page_address (struct page*) ;
 int pagefault_disable () ;
 int pagefault_enable () ;
 struct page* pte_page (int ) ;
 int stub1 (unsigned long,int,void*) ;

__attribute__((used)) static int do_op_one_page(unsigned long addr, int len, int is_write,
   int (*op)(unsigned long addr, int len, void *arg), void *arg)
{
 struct page *page;
 pte_t *pte;
 int n;

 pte = maybe_map(addr, is_write);
 if (pte == ((void*)0))
  return -1;

 page = pte_page(*pte);





 addr = (unsigned long) kmap_atomic(page) +
  (addr & ~PAGE_MASK);

 n = (*op)(addr, len, arg);




 kunmap_atomic((void *)addr);


 return n;
}
