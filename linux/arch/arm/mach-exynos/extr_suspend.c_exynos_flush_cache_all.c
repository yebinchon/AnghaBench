
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_cache_all () ;
 int outer_flush_all () ;

__attribute__((used)) static void exynos_flush_cache_all(void)
{
 flush_cache_all();
 outer_flush_all();
}
