
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R4K_INDEX ;
 int local_r4k___flush_cache_all ;
 int r4k_on_each_cpu (int ,int ,int *) ;

__attribute__((used)) static void r4k___flush_cache_all(void)
{
 r4k_on_each_cpu(R4K_INDEX, local_r4k___flush_cache_all, ((void*)0));
}
