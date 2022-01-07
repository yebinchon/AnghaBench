
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
typedef int s16 ;


 int EBUSY ;
 int EEXIST ;
 int MAX_MODULE_HARDRESET_WAIT ;
 scalar_t__ am33xx_prm_is_hardreset_asserted (int,int ,int ,int ) ;
 int am33xx_prm_rmw_reg_bits (int,int,int ,int ) ;
 int omap_test_timeout (scalar_t__,int,int) ;

__attribute__((used)) static int am33xx_prm_deassert_hardreset(u8 shift, u8 st_shift, u8 part,
      s16 inst, u16 rstctrl_offs,
      u16 rstst_offs)
{
 int c;
 u32 mask = 1 << st_shift;


 if (am33xx_prm_is_hardreset_asserted(shift, 0, inst, rstctrl_offs) == 0)
  return -EEXIST;


 am33xx_prm_rmw_reg_bits(0xffffffff, mask, inst, rstst_offs);


 mask = 1 << shift;

 am33xx_prm_rmw_reg_bits(mask, 0, inst, rstctrl_offs);


 omap_test_timeout(am33xx_prm_is_hardreset_asserted(st_shift, 0, inst,
          rstst_offs),
     MAX_MODULE_HARDRESET_WAIT, c);

 return (c == MAX_MODULE_HARDRESET_WAIT) ? -EBUSY : 0;
}
