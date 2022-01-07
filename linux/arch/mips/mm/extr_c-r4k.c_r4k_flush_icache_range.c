
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void __r4k_flush_icache_range (unsigned long,unsigned long,int) ;

__attribute__((used)) static void r4k_flush_icache_range(unsigned long start, unsigned long end)
{
 return __r4k_flush_icache_range(start, end, 0);
}
