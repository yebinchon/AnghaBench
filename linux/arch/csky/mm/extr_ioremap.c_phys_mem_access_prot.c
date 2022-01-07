
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_flags; } ;
typedef int pgprot_t ;


 int O_SYNC ;
 int pfn_valid (unsigned long) ;
 int pgprot_noncached (int ) ;
 int pgprot_writecombine (int ) ;

pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
         unsigned long size, pgprot_t vma_prot)
{
 if (!pfn_valid(pfn)) {
  return pgprot_noncached(vma_prot);
 } else if (file->f_flags & O_SYNC) {
  return pgprot_writecombine(vma_prot);
 }

 return vma_prot;
}
