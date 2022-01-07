
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgprot_t ;


 int __map_kernel_page (unsigned long,unsigned long,int ,unsigned int,int,int ,int ) ;

int radix__map_kernel_page(unsigned long ea, unsigned long pa,
     pgprot_t flags,
     unsigned int map_page_size)
{
 return __map_kernel_page(ea, pa, flags, map_page_size, -1, 0, 0);
}
