
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dma_cache_wback (unsigned long,int) ;
 int instruction_hazard () ;
 int local_flush_icache_range (unsigned long,unsigned long) ;
 int memcpy (void*,char*,int) ;

__attribute__((used)) static void bmips_wr_vec(unsigned long dst, char *start, char *end)
{
 memcpy((void *)dst, start, end - start);
 dma_cache_wback(dst, end - start);
 local_flush_icache_range(dst, dst + (end - start));
 instruction_hazard();
}
