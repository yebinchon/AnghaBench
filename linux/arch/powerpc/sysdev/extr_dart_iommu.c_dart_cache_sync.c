
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_dcache_range (unsigned long,unsigned long) ;

__attribute__((used)) static void dart_cache_sync(unsigned int *base, unsigned int count)
{





 unsigned long start = (unsigned long)base;
 unsigned long end = start + (count + 1) * sizeof(unsigned int);
 unsigned int tmp;


 flush_dcache_range(start, end);






 asm volatile(" sync;"
       " isync;"
       " dcbf 0,%1;"
       " sync;"
       " isync;"
       " lwz %0,0(%1);"
       " isync" : "=r" (tmp) : "r" (end) : "memory");
}
