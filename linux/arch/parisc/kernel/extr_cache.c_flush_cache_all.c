
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cacheflush_h_tmp_function ;
 int on_each_cpu (int ,int *,int) ;

void flush_cache_all(void)
{
 on_each_cpu(cacheflush_h_tmp_function, ((void*)0), 1);
}
