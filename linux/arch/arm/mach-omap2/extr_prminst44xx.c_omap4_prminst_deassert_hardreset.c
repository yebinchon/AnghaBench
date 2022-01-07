
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
 scalar_t__ omap4_prminst_is_hardreset_asserted (int,int,int ,int ) ;
 int omap4_prminst_rmw_inst_reg_bits (int,int,int,int ,int ) ;
 int omap_test_timeout (scalar_t__,int,int) ;

int omap4_prminst_deassert_hardreset(u8 shift, u8 st_shift, u8 part, s16 inst,
         u16 rstctrl_offs, u16 rstst_offs)
{
 int c;
 u32 mask = 1 << shift;
 u32 st_mask = 1 << st_shift;


 if (omap4_prminst_is_hardreset_asserted(shift, part, inst,
      rstctrl_offs) == 0)
  return -EEXIST;


 omap4_prminst_rmw_inst_reg_bits(0xffffffff, st_mask, part, inst,
     rstst_offs);

 omap4_prminst_rmw_inst_reg_bits(mask, 0, part, inst, rstctrl_offs);

 omap_test_timeout(omap4_prminst_is_hardreset_asserted(st_shift, part,
             inst, rstst_offs),
     MAX_MODULE_HARDRESET_WAIT, c);

 return (c == MAX_MODULE_HARDRESET_WAIT) ? -EBUSY : 0;
}
