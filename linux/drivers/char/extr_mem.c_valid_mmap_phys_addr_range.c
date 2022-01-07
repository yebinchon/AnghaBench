
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int valid_mmap_phys_addr_range(unsigned long pfn, size_t size)
{
 return 1;
}
