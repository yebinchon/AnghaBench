
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __flush_cache_all ;
 void* __flush_icache_user_range ;
 int __flush_kernel_vmap_range ;
 void* __local_flush_icache_user_range ;
 void* _dma_cache_inv ;
 void* _dma_cache_wback ;
 void* _dma_cache_wback_inv ;
 int dcache_lsize ;
 int dcache_size ;
 int flush_cache_all ;
 int flush_cache_mm ;
 int flush_cache_page ;
 int flush_cache_range ;
 int flush_data_cache_page ;
 void* flush_icache_range ;
 int icache_lsize ;
 int icache_size ;
 int local_flush_data_cache_page ;
 void* local_flush_icache_range ;
 int local_r3k_flush_data_cache_page ;
 int printk (char*,int,int ) ;
 int r3k___flush_cache_all ;
 void* r3k_dma_cache_wback_inv ;
 int r3k_flush_cache_all ;
 int r3k_flush_cache_mm ;
 int r3k_flush_cache_page ;
 int r3k_flush_cache_range ;
 int r3k_flush_data_cache_page ;
 void* r3k_flush_icache_range ;
 int r3k_flush_kernel_vmap_range ;
 int r3k_probe_cache () ;

void r3k_cache_init(void)
{
 extern void build_clear_page(void);
 extern void build_copy_page(void);

 r3k_probe_cache();

 flush_cache_all = r3k_flush_cache_all;
 __flush_cache_all = r3k___flush_cache_all;
 flush_cache_mm = r3k_flush_cache_mm;
 flush_cache_range = r3k_flush_cache_range;
 flush_cache_page = r3k_flush_cache_page;
 flush_icache_range = r3k_flush_icache_range;
 local_flush_icache_range = r3k_flush_icache_range;
 __flush_icache_user_range = r3k_flush_icache_range;
 __local_flush_icache_user_range = r3k_flush_icache_range;

 __flush_kernel_vmap_range = r3k_flush_kernel_vmap_range;

 local_flush_data_cache_page = local_r3k_flush_data_cache_page;
 flush_data_cache_page = r3k_flush_data_cache_page;

 _dma_cache_wback_inv = r3k_dma_cache_wback_inv;
 _dma_cache_wback = r3k_dma_cache_wback_inv;
 _dma_cache_inv = r3k_dma_cache_wback_inv;

 printk("Primary instruction cache %ldkB, linesize %ld bytes.\n",
  icache_size >> 10, icache_lsize);
 printk("Primary data cache %ldkB, linesize %ld bytes.\n",
  dcache_size >> 10, dcache_lsize);

 build_clear_page();
 build_copy_page();
}
