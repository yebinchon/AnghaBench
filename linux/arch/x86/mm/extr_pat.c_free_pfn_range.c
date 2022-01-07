
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int free_memtype (scalar_t__,scalar_t__) ;
 int pat_pagerange_is_ram (scalar_t__,scalar_t__) ;

__attribute__((used)) static void free_pfn_range(u64 paddr, unsigned long size)
{
 int is_ram;

 is_ram = pat_pagerange_is_ram(paddr, paddr + size);
 if (is_ram == 0)
  free_memtype(paddr, paddr + size);
}
