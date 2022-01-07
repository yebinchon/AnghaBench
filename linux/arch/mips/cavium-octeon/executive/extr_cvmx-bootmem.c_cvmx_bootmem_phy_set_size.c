
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;


 unsigned long long SIZE_OFFSET ;
 int cvmx_write64_uint64 (unsigned long long,unsigned long long) ;

__attribute__((used)) static void cvmx_bootmem_phy_set_size(uint64_t addr, uint64_t size)
{
 cvmx_write64_uint64((addr + SIZE_OFFSET) | (1ull << 63), size);
}
