
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sync_is () ;

inline void dcache_wb_line(unsigned long start)
{
 asm volatile("dcache.cval1 %0\n"::"r"(start):"memory");
 sync_is();
}
