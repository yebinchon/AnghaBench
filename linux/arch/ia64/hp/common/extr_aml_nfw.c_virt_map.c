
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;


 unsigned long __IA64_UNCACHED_OFFSET ;
 void* __va (unsigned long) ;

__attribute__((used)) static void *virt_map(u64 address)
{
 if (address & (1UL << 63))
  return (void *) (__IA64_UNCACHED_OFFSET | address);

 return __va(address);
}
