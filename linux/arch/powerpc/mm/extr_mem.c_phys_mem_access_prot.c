
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
typedef int pgprot_t ;
struct TYPE_2__ {int (* phys_mem_access_prot ) (struct file*,unsigned long,unsigned long,int ) ;} ;


 int page_is_ram (unsigned long) ;
 int pgprot_noncached (int ) ;
 TYPE_1__ ppc_md ;
 int stub1 (struct file*,unsigned long,unsigned long,int ) ;

pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
         unsigned long size, pgprot_t vma_prot)
{
 if (ppc_md.phys_mem_access_prot)
  return ppc_md.phys_mem_access_prot(file, pfn, size, vma_prot);

 if (!page_is_ram(pfn))
  vma_prot = pgprot_noncached(vma_prot);

 return vma_prot;
}
