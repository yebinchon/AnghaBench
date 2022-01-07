
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct multicall_space {int mc; } ;
struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef enum pt_level { ____Placeholder_pt_level } pt_level ;


 int MMUEXT_PIN_L1_TABLE ;
 int MULTI_update_va_mapping (int ,unsigned long,int ,int ) ;
 int PAGE_KERNEL_RO ;
 int PT_PGD ;
 int PT_PTE ;
 scalar_t__ PageHighMem (struct page*) ;
 unsigned int TestSetPagePinned (struct page*) ;
 int UVMF_TLB_FLUSH ;
 struct multicall_space __xen_mc_entry (int ) ;
 void* lowmem_page_address (struct page*) ;
 unsigned long page_to_pfn (struct page*) ;
 int pfn_pte (unsigned long,int ) ;
 int xen_do_pin (int ,unsigned long) ;
 int xen_mc_callback (int ,int *) ;
 int * xen_pte_lock (struct page*,struct mm_struct*) ;
 int xen_pte_unlock ;

__attribute__((used)) static int xen_pin_page(struct mm_struct *mm, struct page *page,
   enum pt_level level)
{
 unsigned pgfl = TestSetPagePinned(page);
 int flush;

 if (pgfl)
  flush = 0;
 else if (PageHighMem(page))


  flush = 1;
 else {
  void *pt = lowmem_page_address(page);
  unsigned long pfn = page_to_pfn(page);
  struct multicall_space mcs = __xen_mc_entry(0);
  spinlock_t *ptl;

  flush = 0;
  ptl = ((void*)0);
  if (level == PT_PTE)
   ptl = xen_pte_lock(page, mm);

  MULTI_update_va_mapping(mcs.mc, (unsigned long)pt,
     pfn_pte(pfn, PAGE_KERNEL_RO),
     level == PT_PGD ? UVMF_TLB_FLUSH : 0);

  if (ptl) {
   xen_do_pin(MMUEXT_PIN_L1_TABLE, pfn);



   xen_mc_callback(xen_pte_unlock, ptl);
  }
 }

 return flush;
}
