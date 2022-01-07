
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_type {int prot_pte; } ;


 scalar_t__ PAGE_SIZE ;
 int __pgprot (int ) ;
 int ioremap_page_range (unsigned long,scalar_t__,unsigned long,int ) ;

int ioremap_page(unsigned long virt, unsigned long phys,
   const struct mem_type *mtype)
{
 return ioremap_page_range(virt, virt + PAGE_SIZE, phys,
      __pgprot(mtype->prot_pte));
}
