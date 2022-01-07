
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CACHE_CLR ;
 int DATA_CACHE ;
 int cache_op_line (unsigned long,int) ;
 int mb () ;

void dcache_wb_line(unsigned long start)
{
 asm volatile("idly4\n":::"memory");
 cache_op_line(start, DATA_CACHE|CACHE_CLR);
 mb();
}
