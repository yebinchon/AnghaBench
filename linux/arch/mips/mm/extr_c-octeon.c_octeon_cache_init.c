
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PAGE_SIZE ;
 void* __flush_cache_all ;
 void* __flush_icache_user_range ;
 int __flush_kernel_vmap_range ;
 void* __local_flush_icache_user_range ;
 int board_cache_error_setup ;
 int build_clear_page () ;
 int build_copy_page () ;
 void* flush_cache_all ;
 int flush_cache_mm ;
 int flush_cache_page ;
 int flush_cache_range ;
 int flush_data_cache_page ;
 void* flush_icache_all ;
 void* flush_icache_range ;
 void* local_flush_icache_range ;
 void* local_octeon_flush_icache_range ;
 int octeon_cache_error_setup ;
 int octeon_flush_cache_mm ;
 int octeon_flush_cache_page ;
 int octeon_flush_cache_range ;
 int octeon_flush_data_cache_page ;
 void* octeon_flush_icache_all ;
 void* octeon_flush_icache_range ;
 int octeon_flush_kernel_vmap_range ;
 int probe_octeon () ;
 scalar_t__ shm_align_mask ;

void octeon_cache_init(void)
{
 probe_octeon();

 shm_align_mask = PAGE_SIZE - 1;

 flush_cache_all = octeon_flush_icache_all;
 __flush_cache_all = octeon_flush_icache_all;
 flush_cache_mm = octeon_flush_cache_mm;
 flush_cache_page = octeon_flush_cache_page;
 flush_cache_range = octeon_flush_cache_range;
 flush_icache_all = octeon_flush_icache_all;
 flush_data_cache_page = octeon_flush_data_cache_page;
 flush_icache_range = octeon_flush_icache_range;
 local_flush_icache_range = local_octeon_flush_icache_range;
 __flush_icache_user_range = octeon_flush_icache_range;
 __local_flush_icache_user_range = local_octeon_flush_icache_range;

 __flush_kernel_vmap_range = octeon_flush_kernel_vmap_range;

 build_clear_page();
 build_copy_page();

 board_cache_error_setup = octeon_cache_error_setup;
}
