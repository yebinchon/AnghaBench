
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
typedef int s16 ;


 int am33xx_prm_rmw_reg_bits (int,int,int ,int ) ;

__attribute__((used)) static int am33xx_prm_assert_hardreset(u8 shift, u8 part, s16 inst,
           u16 rstctrl_offs)
{
 u32 mask = 1 << shift;

 am33xx_prm_rmw_reg_bits(mask, mask, inst, rstctrl_offs);

 return 0;
}
