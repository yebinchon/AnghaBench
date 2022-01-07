
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int temp_mm_state_t ;
struct page {int dummy; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pgprot_t ;


 int BUG_ON (int) ;
 int PAGE_KERNEL ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PageReserved (struct page*) ;
 int VM_BUG_ON (int) ;
 int WARN_ON (int) ;
 int _PAGE_GLOBAL ;
 int __pgprot (int) ;
 int after_bootmem ;
 int barrier () ;
 int core_kernel_text (unsigned long) ;
 int flush_tlb_mm_range (int ,scalar_t__,scalar_t__,int ,int) ;
 int * get_locked_pte (int ,scalar_t__,int **) ;
 int kasan_disable_current () ;
 int kasan_enable_current () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int memcmp (void*,void const*,size_t) ;
 int memcpy (int *,void const*,size_t) ;
 int mk_pte (struct page*,int ) ;
 int offset_in_page (void*) ;
 int pgprot_val (int ) ;
 scalar_t__ poking_addr ;
 int poking_mm ;
 int pte_clear (int ,scalar_t__,int *) ;
 int pte_unmap_unlock (int *,int *) ;
 int set_pte_at (int ,scalar_t__,int *,int ) ;
 int unuse_temporary_mm (int ) ;
 int use_temporary_mm (int ) ;
 struct page* virt_to_page (void*) ;
 struct page* vmalloc_to_page (void*) ;

__attribute__((used)) static void *__text_poke(void *addr, const void *opcode, size_t len)
{
 bool cross_page_boundary = offset_in_page(addr) + len > PAGE_SIZE;
 struct page *pages[2] = {((void*)0)};
 temp_mm_state_t prev;
 unsigned long flags;
 pte_t pte, *ptep;
 spinlock_t *ptl;
 pgprot_t pgprot;





 BUG_ON(!after_bootmem);

 if (!core_kernel_text((unsigned long)addr)) {
  pages[0] = vmalloc_to_page(addr);
  if (cross_page_boundary)
   pages[1] = vmalloc_to_page(addr + PAGE_SIZE);
 } else {
  pages[0] = virt_to_page(addr);
  WARN_ON(!PageReserved(pages[0]));
  if (cross_page_boundary)
   pages[1] = virt_to_page(addr + PAGE_SIZE);
 }




 BUG_ON(!pages[0] || (cross_page_boundary && !pages[1]));

 local_irq_save(flags);





 pgprot = __pgprot(pgprot_val(PAGE_KERNEL) & ~_PAGE_GLOBAL);




 ptep = get_locked_pte(poking_mm, poking_addr, &ptl);




 VM_BUG_ON(!ptep);

 pte = mk_pte(pages[0], pgprot);
 set_pte_at(poking_mm, poking_addr, ptep, pte);

 if (cross_page_boundary) {
  pte = mk_pte(pages[1], pgprot);
  set_pte_at(poking_mm, poking_addr + PAGE_SIZE, ptep + 1, pte);
 }





 prev = use_temporary_mm(poking_mm);

 kasan_disable_current();
 memcpy((u8 *)poking_addr + offset_in_page(addr), opcode, len);
 kasan_enable_current();





 barrier();

 pte_clear(poking_mm, poking_addr, ptep);
 if (cross_page_boundary)
  pte_clear(poking_mm, poking_addr + PAGE_SIZE, ptep + 1);






 unuse_temporary_mm(prev);





 flush_tlb_mm_range(poking_mm, poking_addr, poking_addr +
      (cross_page_boundary ? 2 : 1) * PAGE_SIZE,
      PAGE_SHIFT, 0);





 BUG_ON(memcmp(addr, opcode, len));

 pte_unmap_unlock(ptep, ptl);
 local_irq_restore(flags);
 return addr;
}
