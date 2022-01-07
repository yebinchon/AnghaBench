
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phys_addr_t ;



void *arch_memremap_wb(phys_addr_t phys_addr, size_t size)
{
 return (void *)phys_addr;
}
