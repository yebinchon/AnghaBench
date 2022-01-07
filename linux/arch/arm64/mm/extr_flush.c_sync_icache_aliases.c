
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __clean_dcache_area_pou (void*,unsigned long) ;
 int __flush_icache_all () ;
 int __flush_icache_range (unsigned long,unsigned long) ;
 scalar_t__ icache_is_aliasing () ;

void sync_icache_aliases(void *kaddr, unsigned long len)
{
 unsigned long addr = (unsigned long)kaddr;

 if (icache_is_aliasing()) {
  __clean_dcache_area_pou(kaddr, len);
  __flush_icache_all();
 } else {




  __flush_icache_range(addr, addr + len);
 }
}
