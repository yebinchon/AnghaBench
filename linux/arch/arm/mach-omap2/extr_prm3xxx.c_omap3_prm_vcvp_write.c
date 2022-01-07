
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int OMAP3430_GR_MOD ;
 int omap2_prm_write_mod_reg (int ,int ,int ) ;

void omap3_prm_vcvp_write(u32 val, u8 offset)
{
 omap2_prm_write_mod_reg(val, OMAP3430_GR_MOD, offset);
}
