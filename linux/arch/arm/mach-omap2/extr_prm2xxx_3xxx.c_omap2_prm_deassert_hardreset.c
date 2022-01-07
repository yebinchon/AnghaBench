
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
 int OMAP2_RM_RSTCTRL ;
 int OMAP2_RM_RSTST ;
 scalar_t__ omap2_prm_read_mod_bits_shift (int ,int ,int) ;
 int omap2_prm_rmw_mod_reg_bits (int,int,int ,int ) ;
 int omap_test_timeout (scalar_t__,int,int) ;

int omap2_prm_deassert_hardreset(u8 rst_shift, u8 st_shift, u8 part,
     s16 prm_mod, u16 rst_offset, u16 st_offset)
{
 u32 rst, st;
 int c;

 rst = 1 << rst_shift;
 st = 1 << st_shift;


 if (omap2_prm_read_mod_bits_shift(prm_mod, OMAP2_RM_RSTCTRL, rst) == 0)
  return -EEXIST;


 omap2_prm_rmw_mod_reg_bits(0xffffffff, st, prm_mod, OMAP2_RM_RSTST);

 omap2_prm_rmw_mod_reg_bits(rst, 0, prm_mod, OMAP2_RM_RSTCTRL);

 omap_test_timeout(omap2_prm_read_mod_bits_shift(prm_mod, OMAP2_RM_RSTST,
        st),
     MAX_MODULE_HARDRESET_WAIT, c);

 return (c == MAX_MODULE_HARDRESET_WAIT) ? -EBUSY : 0;
}
