
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BUG_ON (int) ;
 int _omap2_sram_ddr_init (int *,int ,int ,int ) ;

void omap2_sram_ddr_init(u32 *slow_dll_ctrl, u32 fast_dll_ctrl,
     u32 base_cs, u32 force_unlock)
{
 BUG_ON(!_omap2_sram_ddr_init);
 _omap2_sram_ddr_init(slow_dll_ctrl, fast_dll_ctrl,
        base_cs, force_unlock);
}
