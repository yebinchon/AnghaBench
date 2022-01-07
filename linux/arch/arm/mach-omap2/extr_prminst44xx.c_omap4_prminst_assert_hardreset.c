
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
typedef int s16 ;


 int omap4_prminst_rmw_inst_reg_bits (int,int,int,int ,int ) ;

int omap4_prminst_assert_hardreset(u8 shift, u8 part, s16 inst,
       u16 rstctrl_offs)
{
 u32 mask = 1 << shift;

 omap4_prminst_rmw_inst_reg_bits(mask, mask, part, inst, rstctrl_offs);

 return 0;
}
