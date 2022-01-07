
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cacheop_on_each_cpu (int ,void*,int) ;
 int local_flush_cache_sigtramp ;

void flush_cache_sigtramp(unsigned long address)
{
 cacheop_on_each_cpu(local_flush_cache_sigtramp, (void *)address, 1);
}
