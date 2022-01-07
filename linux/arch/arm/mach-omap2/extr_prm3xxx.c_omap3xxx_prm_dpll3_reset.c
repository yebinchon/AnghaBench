
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OMAP2_RM_RSTCTRL ;
 int OMAP3430_GR_MOD ;
 int OMAP_RST_DPLL3_MASK ;
 int omap2_prm_read_mod_reg (int ,int ) ;
 int omap2_prm_set_mod_reg_bits (int ,int ,int ) ;

__attribute__((used)) static void omap3xxx_prm_dpll3_reset(void)
{
 omap2_prm_set_mod_reg_bits(OMAP_RST_DPLL3_MASK, OMAP3430_GR_MOD,
       OMAP2_RM_RSTCTRL);

 omap2_prm_read_mod_reg(OMAP3430_GR_MOD, OMAP2_RM_RSTCTRL);
}
