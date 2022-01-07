
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t phys_addr_t ;


 size_t __pa (scalar_t__) ;
 scalar_t__ high_memory ;

int valid_phys_addr_range(phys_addr_t addr, size_t count)
{
 return addr + count - 1 <= __pa(high_memory - 1);
}
