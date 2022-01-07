
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ omap_sram_base ;
 scalar_t__ omap_sram_ceil ;
 scalar_t__ omap_sram_size ;

void omap_sram_reset(void)
{
 omap_sram_ceil = omap_sram_base + omap_sram_size;
}
