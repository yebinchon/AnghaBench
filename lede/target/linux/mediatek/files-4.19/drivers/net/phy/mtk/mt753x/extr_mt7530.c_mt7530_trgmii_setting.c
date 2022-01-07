
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct gsw_mt753x {int dummy; } ;


 int CORE_PLL_GROUP10 ;
 int CORE_PLL_GROUP11 ;
 int CORE_PLL_GROUP2 ;
 int CORE_PLL_GROUP4 ;
 int CORE_PLL_GROUP5 ;
 int CORE_PLL_GROUP6 ;
 int CORE_PLL_GROUP7 ;
 int GSWCK_EN ;
 scalar_t__ NUM_TRGMII_ODT ;
 int RG_LCCDS_C_S ;
 int RG_LCDDS_ISO_EN ;
 int RG_LCDDS_PWDB ;
 int RG_SYSPLL_BIAS_EN ;
 int RG_SYSPLL_BIAS_LPF_EN ;
 int RG_SYSPLL_DDSFBK_EN ;
 int RG_SYSPLL_EN_NORMAL ;
 int RG_SYSPLL_POSDIV_S ;
 int RG_SYSPLL_VODEN ;
 int TRGMIICK_EN ;
 int TRGMII_GSW_CLK_CG ;
 int TRGMII_TD_ODT (scalar_t__) ;
 int TX_DM_DRVN_S ;
 int TX_DM_DRVP_S ;
 int mdelay (int) ;
 int mt7530_core_reg_write (struct gsw_mt753x*,int ,int) ;
 int mt753x_reg_write (struct gsw_mt753x*,int ,int) ;

__attribute__((used)) static void mt7530_trgmii_setting(struct gsw_mt753x *gsw)
{
 u16 i;

 mt7530_core_reg_write(gsw, CORE_PLL_GROUP5, 0x0780);
 mdelay(1);
 mt7530_core_reg_write(gsw, CORE_PLL_GROUP6, 0);
 mt7530_core_reg_write(gsw, CORE_PLL_GROUP10, 0x87);
 mdelay(1);
 mt7530_core_reg_write(gsw, CORE_PLL_GROUP11, 0x87);


 mt7530_core_reg_write(gsw, CORE_PLL_GROUP4,
         RG_SYSPLL_DDSFBK_EN | RG_SYSPLL_BIAS_EN);
 mdelay(1);


 mt7530_core_reg_write(gsw, CORE_PLL_GROUP4,
         RG_SYSPLL_DDSFBK_EN |
         RG_SYSPLL_BIAS_EN | RG_SYSPLL_BIAS_LPF_EN);


 mt7530_core_reg_write(gsw, CORE_PLL_GROUP2,
         RG_SYSPLL_EN_NORMAL | RG_SYSPLL_VODEN |
         (1 << RG_SYSPLL_POSDIV_S));


 mt7530_core_reg_write(gsw, CORE_PLL_GROUP7,
         (3 << RG_LCCDS_C_S) |
         RG_LCDDS_PWDB | RG_LCDDS_ISO_EN);
 mdelay(1);


 mt7530_core_reg_write(gsw, TRGMII_GSW_CLK_CG, GSWCK_EN | TRGMIICK_EN);


 for (i = 0 ; i < NUM_TRGMII_ODT; i++)
  mt753x_reg_write(gsw, TRGMII_TD_ODT(i),
     (4 << TX_DM_DRVP_S) | (4 << TX_DM_DRVN_S));
}
