
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long MAX_DMA_ADDRESS ;
 unsigned long PAGE_OFFSET ;
 scalar_t__ high_memory ;

__attribute__((used)) static inline bool __virt_addr_valid(unsigned long x)
{




 if (!high_memory && x >= PAGE_OFFSET)
  return 1;

 if (high_memory && x >= PAGE_OFFSET && x < (unsigned long)high_memory)
  return 1;






 if (x == MAX_DMA_ADDRESS)
  return 1;

 return 0;
}
