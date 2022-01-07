
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CACHE_OC_ADDRESS_ARRAY ;
 unsigned long CACHE_PHYSADDR_MASK ;
 int L1_CACHE_BYTES ;
 int __raw_writel (unsigned long,unsigned long) ;

__attribute__((used)) static void sh2__flush_purge_region(void *start, int size)
{
 unsigned long v;
 unsigned long begin, end;

 begin = (unsigned long)start & ~(L1_CACHE_BYTES-1);
 end = ((unsigned long)start + size + L1_CACHE_BYTES-1)
  & ~(L1_CACHE_BYTES-1);

 for (v = begin; v < end; v+=L1_CACHE_BYTES)
  __raw_writel((v & CACHE_PHYSADDR_MASK),
     CACHE_OC_ADDRESS_ARRAY | (v & 0x00000ff0) | 0x00000008);
}
