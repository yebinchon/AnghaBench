
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ int64_t ;


 scalar_t__ cvmx_bootmem_phy_named_block_alloc (int ,int ,int ,int ,char*,int ) ;
 void* cvmx_phys_to_ptr (scalar_t__) ;

void *cvmx_bootmem_alloc_named_range(uint64_t size, uint64_t min_addr,
         uint64_t max_addr, uint64_t align,
         char *name)
{
 int64_t addr;

 addr = cvmx_bootmem_phy_named_block_alloc(size, min_addr, max_addr,
        align, name, 0);
 if (addr >= 0)
  return cvmx_phys_to_ptr(addr);
 else
  return ((void*)0);
}
