
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
typedef int s16 ;


 int omap4_prminst_read_inst_reg (int,int ,int ) ;

int omap4_prminst_is_hardreset_asserted(u8 shift, u8 part, s16 inst,
     u16 rstctrl_offs)
{
 u32 v;

 v = omap4_prminst_read_inst_reg(part, inst, rstctrl_offs);
 v &= 1 << shift;
 v >>= shift;

 return v;
}
