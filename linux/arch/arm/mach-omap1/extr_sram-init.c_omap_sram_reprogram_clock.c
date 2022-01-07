
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BUG_ON (int) ;
 int _omap_sram_reprogram_clock (int,int) ;
 scalar_t__ cpu_is_omap7xx () ;

void omap_sram_reprogram_clock(u32 dpllctl, u32 ckctl)
{
 BUG_ON(!_omap_sram_reprogram_clock);

 if (cpu_is_omap7xx())
  ckctl |= 0x2000;
 _omap_sram_reprogram_clock(dpllctl, ckctl);
}
