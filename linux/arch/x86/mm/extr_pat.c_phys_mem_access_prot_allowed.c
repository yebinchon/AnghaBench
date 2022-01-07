
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_flags; } ;
typedef int pgprot_t ;
typedef enum page_cache_mode { ____Placeholder_page_cache_mode } page_cache_mode ;


 int O_DSYNC ;
 int _PAGE_CACHE_MASK ;
 int _PAGE_CACHE_MODE_UC_MINUS ;
 int _PAGE_CACHE_MODE_WB ;
 int __pgprot (int) ;
 int cachemode2protval (int) ;
 int pgprot_val (int ) ;
 int range_is_allowed (unsigned long,unsigned long) ;

int phys_mem_access_prot_allowed(struct file *file, unsigned long pfn,
    unsigned long size, pgprot_t *vma_prot)
{
 enum page_cache_mode pcm = _PAGE_CACHE_MODE_WB;

 if (!range_is_allowed(pfn, size))
  return 0;

 if (file->f_flags & O_DSYNC)
  pcm = _PAGE_CACHE_MODE_UC_MINUS;

 *vma_prot = __pgprot((pgprot_val(*vma_prot) & ~_PAGE_CACHE_MASK) |
        cachemode2protval(pcm));
 return 1;
}
