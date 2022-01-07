
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ phy_mode; scalar_t__ enabled; } ;
struct gsw_mt753x {TYPE_1__ port6_cfg; scalar_t__ direct_phy_access; } ;


 int CHG_TRAP ;
 int CORE_GSWPLL_GCR_1 ;
 int CORE_GSWPLL_GCR_2 ;
 int CSR_RGMII_EDGE_ALIGN ;
 int CSR_RGMII_RXC_0DEG_CFG_S ;
 int CSR_RGMII_TXC_CFG_S ;
 int C_MDIO_BPS_S ;
 int GSWCK_EN ;
 int GSWPLL_EN_PRE ;
 int GSWPLL_FBKDIV_200M_S ;
 int GSWPLL_FBKDIV_500M_S ;
 int GSWPLL_POSTDIV_200M_S ;
 int GSWPLL_POSTDIV_500M_S ;
 int HWSTRAP ;
 int MHWSTRAP ;
 int P5RGMIIRXCR ;
 int P5RGMIITXCR ;
 scalar_t__ PHY_INTERFACE_MODE_TRGMII ;
 int TRGMII_GSW_CLK_CG ;

 int XTAL_FSEL_M ;
 int XTAL_FSEL_S ;
 int mt7530_core_reg_write (struct gsw_mt753x*,int ,int) ;
 int mt7530_rgmii_setting (struct gsw_mt753x*) ;
 int mt7530_trgmii_setting (struct gsw_mt753x*) ;
 int mt753x_reg_read (struct gsw_mt753x*,int ) ;
 int mt753x_reg_write (struct gsw_mt753x*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void mt7530_core_pll_setup(struct gsw_mt753x *gsw)
{
 u32 hwstrap;

 hwstrap = mt753x_reg_read(gsw, HWSTRAP);

 switch ((hwstrap & XTAL_FSEL_M) >> XTAL_FSEL_S) {
 case 128:

  mt7530_core_reg_write(gsw, TRGMII_GSW_CLK_CG, 0);


  mt7530_core_reg_write(gsw, CORE_GSWPLL_GCR_1,
          (2 << GSWPLL_POSTDIV_200M_S) |
          (32 << GSWPLL_FBKDIV_200M_S));


  mt7530_core_reg_write(gsw, CORE_GSWPLL_GCR_2,
          (1 << GSWPLL_POSTDIV_500M_S) |
          (25 << GSWPLL_FBKDIV_500M_S));


  mt7530_core_reg_write(gsw, CORE_GSWPLL_GCR_1,
          (2 << GSWPLL_POSTDIV_200M_S) |
          (32 << GSWPLL_FBKDIV_200M_S) |
          GSWPLL_EN_PRE);

  usleep_range(20, 40);


  mt7530_core_reg_write(gsw, TRGMII_GSW_CLK_CG, GSWCK_EN);
  break;
 default:

  break;
 }

 hwstrap = mt753x_reg_read(gsw, HWSTRAP);
 hwstrap |= CHG_TRAP;
 if (gsw->direct_phy_access)
  hwstrap &= ~C_MDIO_BPS_S;
 else
  hwstrap |= C_MDIO_BPS_S;

 mt753x_reg_write(gsw, MHWSTRAP, hwstrap);

 if (gsw->port6_cfg.enabled &&
     gsw->port6_cfg.phy_mode == PHY_INTERFACE_MODE_TRGMII) {
  mt7530_trgmii_setting(gsw);
 } else {

  mt7530_rgmii_setting(gsw);
 }


 mt753x_reg_write(gsw, P5RGMIIRXCR,
    CSR_RGMII_EDGE_ALIGN |
    (2 << CSR_RGMII_RXC_0DEG_CFG_S));
 mt753x_reg_write(gsw, P5RGMIITXCR, 0x14 << CSR_RGMII_TXC_CFG_S);
}
