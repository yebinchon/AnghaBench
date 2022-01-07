
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int OMAP3430_GR_MOD ;
 int omap2_prm_read_mod_reg (int ,int ) ;

u32 omap3_prm_vcvp_read(u8 offset)
{
 return omap2_prm_read_mod_reg(OMAP3430_GR_MOD, offset);
}
