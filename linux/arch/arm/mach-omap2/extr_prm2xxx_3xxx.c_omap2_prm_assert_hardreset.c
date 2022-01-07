
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
typedef int s16 ;


 int OMAP2_RM_RSTCTRL ;
 int omap2_prm_rmw_mod_reg_bits (int,int,int ,int ) ;

int omap2_prm_assert_hardreset(u8 shift, u8 part, s16 prm_mod, u16 offset)
{
 u32 mask;

 mask = 1 << shift;
 omap2_prm_rmw_mod_reg_bits(mask, mask, prm_mod, OMAP2_RM_RSTCTRL);

 return 0;
}
