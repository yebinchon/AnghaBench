
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int s16 ;


 int OMAP2_RM_RSTCTRL ;
 int omap2_prm_read_mod_bits_shift (int ,int ,int) ;

int omap2_prm_is_hardreset_asserted(u8 shift, u8 part, s16 prm_mod, u16 offset)
{
 return omap2_prm_read_mod_bits_shift(prm_mod, OMAP2_RM_RSTCTRL,
           (1 << shift));
}
