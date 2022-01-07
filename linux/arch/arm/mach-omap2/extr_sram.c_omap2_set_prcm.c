
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BUG_ON (int) ;
 int _omap2_set_prcm (int ,int ,int) ;

u32 omap2_set_prcm(u32 dpll_ctrl_val, u32 sdrc_rfr_val, int bypass)
{
 BUG_ON(!_omap2_set_prcm);
 return _omap2_set_prcm(dpll_ctrl_val, sdrc_rfr_val, bypass);
}
