
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct vm_struct {unsigned long size; int flags; int nr_pages; int * pages; scalar_t__ addr; } ;
typedef int pgprot_t ;


 int EINVAL ;
 int PAGE_ALIGNED (unsigned long) ;
 unsigned long PAGE_MASK ;
 int PAGE_SIZE ;
 scalar_t__ PTE_RDONLY ;
 int VM_ALLOC ;
 int WARN_ON_ONCE (int) ;
 int __change_memory_common (unsigned long,unsigned long,int ,int ) ;
 struct vm_struct* find_vm_area (void*) ;
 scalar_t__ page_address (int ) ;
 scalar_t__ pgprot_val (int ) ;
 scalar_t__ rodata_full ;
 int vm_unmap_aliases () ;

__attribute__((used)) static int change_memory_common(unsigned long addr, int numpages,
    pgprot_t set_mask, pgprot_t clear_mask)
{
 unsigned long start = addr;
 unsigned long size = PAGE_SIZE*numpages;
 unsigned long end = start + size;
 struct vm_struct *area;
 int i;

 if (!PAGE_ALIGNED(addr)) {
  start &= PAGE_MASK;
  end = start + size;
  WARN_ON_ONCE(1);
 }
 area = find_vm_area((void *)addr);
 if (!area ||
     end > (unsigned long)area->addr + area->size ||
     !(area->flags & VM_ALLOC))
  return -EINVAL;

 if (!numpages)
  return 0;





 if (rodata_full && (pgprot_val(set_mask) == PTE_RDONLY ||
       pgprot_val(clear_mask) == PTE_RDONLY)) {
  for (i = 0; i < area->nr_pages; i++) {
   __change_memory_common((u64)page_address(area->pages[i]),
            PAGE_SIZE, set_mask, clear_mask);
  }
 }





 vm_unmap_aliases();

 return __change_memory_common(start, size, set_mask, clear_mask);
}
