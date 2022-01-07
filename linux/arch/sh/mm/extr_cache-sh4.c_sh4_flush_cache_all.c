
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_dcache_all () ;
 int flush_icache_all () ;

__attribute__((used)) static void sh4_flush_cache_all(void *unused)
{
 flush_dcache_all();
 flush_icache_all();
}
