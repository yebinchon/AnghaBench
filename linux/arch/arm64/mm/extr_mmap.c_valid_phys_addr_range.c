
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;


 scalar_t__ memblock_is_map_memory (int ) ;
 scalar_t__ memblock_is_region_memory (int ,size_t) ;

int valid_phys_addr_range(phys_addr_t addr, size_t size)
{
 return memblock_is_region_memory(addr, size) &&
        memblock_is_map_memory(addr);
}
