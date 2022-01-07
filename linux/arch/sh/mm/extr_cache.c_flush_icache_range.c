
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flusher_data {unsigned long addr1; unsigned long addr2; int * vma; } ;


 int cacheop_on_each_cpu (int ,void*,int) ;
 int local_flush_icache_range ;

void flush_icache_range(unsigned long start, unsigned long end)
{
 struct flusher_data data;

 data.vma = ((void*)0);
 data.addr1 = start;
 data.addr2 = end;

 cacheop_on_each_cpu(local_flush_icache_range, (void *)&data, 1);
}
