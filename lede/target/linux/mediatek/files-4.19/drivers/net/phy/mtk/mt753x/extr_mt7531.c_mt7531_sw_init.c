
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsw_mt753x {int phy_base; int smi_addr; int (* mii_read ) (struct gsw_mt753x*,int,int ) ;int port6_cfg; int port5_cfg; int (* mii_write ) (struct gsw_mt753x*,int,int ,int) ;int mmd_write; int mmd_read; } ;


 int BMCR_ISOLATE ;
 int FORCE_MODE_LNK ;
 int GMACCR ;
 int MAX_RX_JUMBO_S ;
 int MII_BMCR ;
 int MT753X_NUM_PHYS ;
 int MT753X_SMI_ADDR_MASK ;
 int MTCC_LMT_S ;
 int PMCR (int) ;
 int RX_PKT_LEN_MAX_JUMBO ;
 int SMT0_IOLB ;
 int SMT_IOLB_5_SMI_MDC_EN ;
 int SW_REG_RST ;
 int SW_SYS_RST ;
 int SYS_CTRL ;
 int mt7531_core_pll_setup (struct gsw_mt753x*) ;
 int mt7531_mac_port_setup (struct gsw_mt753x*,int,int *) ;
 int mt7531_set_gpio_pinmux (struct gsw_mt753x*) ;
 int mt753x_mii_read (struct gsw_mt753x*,int,int ) ;
 int mt753x_mii_write (struct gsw_mt753x*,int,int ,int) ;
 int mt753x_mmd_read ;
 int mt753x_mmd_write ;
 int mt753x_reg_read (struct gsw_mt753x*,int ) ;
 int mt753x_reg_write (struct gsw_mt753x*,int ,int) ;
 int stub1 (struct gsw_mt753x*,int,int ) ;
 int stub2 (struct gsw_mt753x*,int,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int mt7531_sw_init(struct gsw_mt753x *gsw)
{
 int i;
 u32 val;

 gsw->phy_base = (gsw->smi_addr + 1) & MT753X_SMI_ADDR_MASK;

 gsw->mii_read = mt753x_mii_read;
 gsw->mii_write = mt753x_mii_write;
 gsw->mmd_read = mt753x_mmd_read;
 gsw->mmd_write = mt753x_mmd_write;

 for (i = 0; i < MT753X_NUM_PHYS; i++) {
  val = gsw->mii_read(gsw, i, MII_BMCR);
  val |= BMCR_ISOLATE;
  gsw->mii_write(gsw, i, MII_BMCR, val);
 }


 mt753x_reg_write(gsw, PMCR(5), FORCE_MODE_LNK);
 mt753x_reg_write(gsw, PMCR(6), FORCE_MODE_LNK);


 mt753x_reg_write(gsw, SYS_CTRL, SW_SYS_RST | SW_REG_RST);
 usleep_range(10, 20);


 val = mt753x_reg_read(gsw, SMT0_IOLB);
 mt753x_reg_write(gsw, SMT0_IOLB, val | SMT_IOLB_5_SMI_MDC_EN);


 mt7531_set_gpio_pinmux(gsw);


 mt753x_reg_write(gsw, GMACCR,
    (15 << MTCC_LMT_S) | (11 << MAX_RX_JUMBO_S) |
    RX_PKT_LEN_MAX_JUMBO);

 mt7531_core_pll_setup(gsw);
 mt7531_mac_port_setup(gsw, 5, &gsw->port5_cfg);
 mt7531_mac_port_setup(gsw, 6, &gsw->port6_cfg);

 return 0;
}
