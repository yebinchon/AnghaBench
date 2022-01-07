
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* UNCAC_BASE ;
 void* __va (void*) ;

void *cached_kernel_address(void *addr)
{
 return __va(addr) - UNCAC_BASE;
}
