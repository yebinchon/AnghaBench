
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phys_addr_t ;
typedef int pgprot_t ;


 scalar_t__ PAGE_SIZE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int map_kernel_page (unsigned long,scalar_t__,int ) ;

int early_ioremap_range(unsigned long ea, phys_addr_t pa,
   unsigned long size, pgprot_t prot)
{
 unsigned long i;

 for (i = 0; i < size; i += PAGE_SIZE) {
  int err = map_kernel_page(ea + i, pa + i, prot);

  if (WARN_ON_ONCE(err))
   return err;
 }

 return 0;
}
