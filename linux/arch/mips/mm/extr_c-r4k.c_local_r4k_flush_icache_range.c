
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R4K_HIT ;
 int R4K_INDEX ;
 int __local_r4k_flush_icache_range (unsigned long,unsigned long,int,int) ;

__attribute__((used)) static inline void local_r4k_flush_icache_range(unsigned long start,
      unsigned long end)
{
 __local_r4k_flush_icache_range(start, end, R4K_HIT | R4K_INDEX, 0);
}
