
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BUG_ON (int) ;
 int _omap2_sram_reprogram_sdrc (int ,int ,int ) ;

void omap2_sram_reprogram_sdrc(u32 perf_level, u32 dll_val, u32 mem_type)
{
 BUG_ON(!_omap2_sram_reprogram_sdrc);
 _omap2_sram_reprogram_sdrc(perf_level, dll_val, mem_type);
}
