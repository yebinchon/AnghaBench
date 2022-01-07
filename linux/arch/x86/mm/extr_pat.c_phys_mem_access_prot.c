
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int pgprot_t ;


 unsigned long PAGE_SHIFT ;
 int pgprot_decrypted (int ) ;
 int phys_mem_access_encrypted (unsigned long,unsigned long) ;

pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
    unsigned long size, pgprot_t vma_prot)
{
 if (!phys_mem_access_encrypted(pfn << PAGE_SHIFT, size))
  vma_prot = pgprot_decrypted(vma_prot);

 return vma_prot;
}
