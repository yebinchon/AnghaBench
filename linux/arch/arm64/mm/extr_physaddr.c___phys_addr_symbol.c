
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;


 scalar_t__ KERNEL_END ;
 scalar_t__ KERNEL_START ;
 int VIRTUAL_BUG_ON (int) ;
 int __pa_symbol_nodebug (unsigned long) ;

phys_addr_t __phys_addr_symbol(unsigned long x)
{




 VIRTUAL_BUG_ON(x < (unsigned long) KERNEL_START ||
         x > (unsigned long) KERNEL_END);
 return __pa_symbol_nodebug(x);
}
