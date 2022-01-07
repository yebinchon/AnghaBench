
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CM_CLKSEL ;
 int CM_CLKSEL1 ;
 int CORE_MOD ;
 int GFX_MOD ;
 int MPU_MOD ;
 int OMAP2430_MDM_MOD ;
 int OMAP24XX_CLKSEL_DSS2_MASK ;
 int OMAP24XX_DSP_MOD ;
 int omap2_cm_read_mod_reg (int ,int ) ;
 int omap2_cm_write_mod_reg (int,int ,int ) ;

void omap2xxx_cm_set_mod_dividers(u32 mpu, u32 dsp, u32 gfx, u32 core, u32 mdm)
{
 u32 tmp;

 omap2_cm_write_mod_reg(mpu, MPU_MOD, CM_CLKSEL);
 omap2_cm_write_mod_reg(dsp, OMAP24XX_DSP_MOD, CM_CLKSEL);
 omap2_cm_write_mod_reg(gfx, GFX_MOD, CM_CLKSEL);
 tmp = omap2_cm_read_mod_reg(CORE_MOD, CM_CLKSEL1) &
  OMAP24XX_CLKSEL_DSS2_MASK;
 omap2_cm_write_mod_reg(core | tmp, CORE_MOD, CM_CLKSEL1);
 if (mdm)
  omap2_cm_write_mod_reg(mdm, OMAP2430_MDM_MOD, CM_CLKSEL);
}
