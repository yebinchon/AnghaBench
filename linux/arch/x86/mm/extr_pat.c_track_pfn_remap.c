
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int vm_flags; } ;
typedef unsigned long resource_size_t ;
typedef int pgprot_t ;
typedef enum page_cache_mode { ____Placeholder_page_cache_mode } page_cache_mode ;


 int EINVAL ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 int VM_PAT ;
 int _PAGE_CACHE_MASK ;
 int __pgprot (int) ;
 int cachemode2protval (int) ;
 int lookup_memtype (unsigned long) ;
 int pat_enabled () ;
 int pgprot_val (int ) ;
 int reserve_pfn_range (unsigned long,unsigned long,int *,int ) ;

int track_pfn_remap(struct vm_area_struct *vma, pgprot_t *prot,
      unsigned long pfn, unsigned long addr, unsigned long size)
{
 resource_size_t paddr = (resource_size_t)pfn << PAGE_SHIFT;
 enum page_cache_mode pcm;


 if (!vma || (addr == vma->vm_start
    && size == (vma->vm_end - vma->vm_start))) {
  int ret;

  ret = reserve_pfn_range(paddr, size, prot, 0);
  if (ret == 0 && vma)
   vma->vm_flags |= VM_PAT;
  return ret;
 }

 if (!pat_enabled())
  return 0;





 pcm = lookup_memtype(paddr);


 while (size > PAGE_SIZE) {
  size -= PAGE_SIZE;
  paddr += PAGE_SIZE;
  if (pcm != lookup_memtype(paddr))
   return -EINVAL;
 }

 *prot = __pgprot((pgprot_val(*prot) & (~_PAGE_CACHE_MASK)) |
    cachemode2protval(pcm));

 return 0;
}
