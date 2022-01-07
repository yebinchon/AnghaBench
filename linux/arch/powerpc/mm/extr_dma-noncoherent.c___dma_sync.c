
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;




 int L1_CACHE_BYTES ;
 int clean_dcache_range (unsigned long,unsigned long) ;
 int flush_dcache_range (unsigned long,unsigned long) ;
 int invalidate_dcache_range (unsigned long,unsigned long) ;

__attribute__((used)) static void __dma_sync(void *vaddr, size_t size, int direction)
{
 unsigned long start = (unsigned long)vaddr;
 unsigned long end = start + size;

 switch (direction) {
 case 129:
  BUG();
 case 130:




  if ((start | end) & (L1_CACHE_BYTES - 1))
   flush_dcache_range(start, end);
  else
   invalidate_dcache_range(start, end);
  break;
 case 128:
  clean_dcache_range(start, end);
  break;
 case 131:
  flush_dcache_range(start, end);
  break;
 }
}
