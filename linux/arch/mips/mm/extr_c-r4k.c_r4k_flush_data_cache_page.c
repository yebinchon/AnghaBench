
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R4K_HIT ;
 scalar_t__ in_atomic () ;
 int local_r4k_flush_data_cache_page (void*) ;
 int r4k_on_each_cpu (int ,int (*) (void*),void*) ;

__attribute__((used)) static void r4k_flush_data_cache_page(unsigned long addr)
{
 if (in_atomic())
  local_r4k_flush_data_cache_page((void *)addr);
 else
  r4k_on_each_cpu(R4K_HIT, local_r4k_flush_data_cache_page,
    (void *) addr);
}
