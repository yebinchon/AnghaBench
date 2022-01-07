
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CONFIG_NIOS2_IO_REGION_BASE ;
 unsigned long CONFIG_NIOS2_KERNEL_REGION_BASE ;

void *cached_kernel_address(void *ptr)
{
 unsigned long addr = (unsigned long)ptr;

 addr &= ~CONFIG_NIOS2_IO_REGION_BASE;
 addr |= CONFIG_NIOS2_KERNEL_REGION_BASE;

 return (void *)ptr;
}
