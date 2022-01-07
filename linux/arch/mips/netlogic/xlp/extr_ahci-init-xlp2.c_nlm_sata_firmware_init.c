
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int CR_REG_TIMER ;
 int CR_TIME_SCALE ;
 int M_CSYSREQ ;
 int P0_IPDIPDMSYNTH ;
 int P0_IPDRXL ;
 int P0_IPDTXL ;
 int P0_IRST_HARD_SYNTH ;
 int P0_IRST_HARD_TXRX ;
 int P0_IRST_POR ;
 int P0_PHY_READY ;
 int P1_IPDIPDMSYNTH ;
 int P1_IPDRXL ;
 int P1_IPDTXL ;
 int P1_IRST_HARD_SYNTH ;
 int P1_IRST_HARD_TXRX ;
 int P1_IRST_POR ;
 int P1_PHY_READY ;
 int SATA_CTL ;
 int SATA_RST_N ;
 int SATA_STATUS ;
 int S_CSYSREQ ;
 int config_sata_phy (int ) ;
 int nlm_get_sata_regbase (int) ;
 int nlm_read_sata_reg (int ,int ) ;
 int pr_debug (char*) ;
 int pr_info (char*) ;
 int sata_clear_glue_reg (int ,int ,int ) ;
 scalar_t__ sata_phy_debug ;
 int sata_set_glue_reg (int ,int ,int ) ;
 int udelay (int) ;
 int verify_sata_phy_config (int ) ;

__attribute__((used)) static void nlm_sata_firmware_init(int node)
{
 u32 reg_val;
 u64 regbase;
 int n;

 pr_info("Initializing XLP9XX On-chip AHCI...\n");
 regbase = nlm_get_sata_regbase(node);


 sata_clear_glue_reg(regbase, SATA_CTL, P0_IRST_POR);
 sata_clear_glue_reg(regbase, SATA_CTL, P0_IRST_HARD_TXRX);
 sata_clear_glue_reg(regbase, SATA_CTL, P0_IRST_HARD_SYNTH);
 sata_clear_glue_reg(regbase, SATA_CTL, P0_IPDTXL);
 sata_clear_glue_reg(regbase, SATA_CTL, P0_IPDRXL);
 sata_clear_glue_reg(regbase, SATA_CTL, P0_IPDIPDMSYNTH);


 sata_clear_glue_reg(regbase, SATA_CTL, P1_IRST_POR);
 sata_clear_glue_reg(regbase, SATA_CTL, P1_IRST_HARD_TXRX);
 sata_clear_glue_reg(regbase, SATA_CTL, P1_IRST_HARD_SYNTH);
 sata_clear_glue_reg(regbase, SATA_CTL, P1_IPDTXL);
 sata_clear_glue_reg(regbase, SATA_CTL, P1_IPDRXL);
 sata_clear_glue_reg(regbase, SATA_CTL, P1_IPDIPDMSYNTH);
 udelay(300);


 sata_set_glue_reg(regbase, SATA_CTL, P0_IPDTXL);
 sata_set_glue_reg(regbase, SATA_CTL, P0_IPDRXL);
 sata_set_glue_reg(regbase, SATA_CTL, P0_IPDIPDMSYNTH);
 sata_set_glue_reg(regbase, SATA_CTL, P1_IPDTXL);
 sata_set_glue_reg(regbase, SATA_CTL, P1_IPDRXL);
 sata_set_glue_reg(regbase, SATA_CTL, P1_IPDIPDMSYNTH);

 udelay(1000);
 sata_set_glue_reg(regbase, SATA_CTL, P0_IRST_POR);
 udelay(1000);
 sata_set_glue_reg(regbase, SATA_CTL, P1_IRST_POR);
 udelay(1000);


 config_sata_phy(regbase);
 if (sata_phy_debug)
  verify_sata_phy_config(regbase);

 udelay(1000);
 sata_set_glue_reg(regbase, SATA_CTL, P0_IRST_HARD_TXRX);
 sata_set_glue_reg(regbase, SATA_CTL, P0_IRST_HARD_SYNTH);
 sata_set_glue_reg(regbase, SATA_CTL, P1_IRST_HARD_TXRX);
 sata_set_glue_reg(regbase, SATA_CTL, P1_IRST_HARD_SYNTH);
 udelay(300);


 sata_set_glue_reg(regbase, CR_REG_TIMER, CR_TIME_SCALE);

 sata_set_glue_reg(regbase, SATA_CTL, SATA_RST_N);
 sata_set_glue_reg(regbase, SATA_CTL, M_CSYSREQ);
 sata_set_glue_reg(regbase, SATA_CTL, S_CSYSREQ);

 pr_debug("Waiting for PHYs to come up.\n");
 n = 10000;
 do {
  reg_val = nlm_read_sata_reg(regbase, SATA_STATUS);
  if ((reg_val & P1_PHY_READY) && (reg_val & P0_PHY_READY))
   break;
  udelay(10);
 } while (--n > 0);

 if (reg_val & P0_PHY_READY)
  pr_info("PHY0 is up.\n");
 else
  pr_info("PHY0 is down.\n");
 if (reg_val & P1_PHY_READY)
  pr_info("PHY1 is up.\n");
 else
  pr_info("PHY1 is down.\n");

 pr_info("XLP AHCI Init Done.\n");
}
