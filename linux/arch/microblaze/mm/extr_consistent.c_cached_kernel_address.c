
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long UNCACHED_SHADOW_MASK ;

void *cached_kernel_address(void *ptr)
{
 unsigned long addr = (unsigned long)ptr;

 return (void *)(addr & ~UNCACHED_SHADOW_MASK);
}
