
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 scalar_t__ DCRN_CW_BASE ;
 scalar_t__ DCRN_CW_MCER0 ;
 scalar_t__ DCRN_CW_MCER1 ;
 scalar_t__ DCRN_DDR34_BASE ;
 scalar_t__ DCRN_DDR34_CFGR0 ;
 scalar_t__ DCRN_DDR34_CFGR1 ;
 scalar_t__ DCRN_DDR34_CFGR2 ;
 scalar_t__ DCRN_DDR34_CFGR3 ;
 scalar_t__ DCRN_DDR34_ECCERR_ADDR_PORT0 ;
 scalar_t__ DCRN_DDR34_ECCERR_COUNT_PORT0 ;
 scalar_t__ DCRN_DDR34_ECCERR_PORT0 ;
 scalar_t__ DCRN_DDR34_ECC_CHECK_PORT0 ;
 scalar_t__ DCRN_DDR34_MCOPT1 ;
 scalar_t__ DCRN_DDR34_MCOPT2 ;
 scalar_t__ DCRN_DDR34_MCSTAT ;
 scalar_t__ DCRN_DDR34_PHYSTAT ;
 scalar_t__ DCRN_DDR34_SCRUB_CNTL ;
 scalar_t__ DCRN_PLB6MCIF_BEARH ;
 scalar_t__ DCRN_PLB6MCIF_BEARL ;
 scalar_t__ DCRN_PLB6MCIF_BESR0 ;
 int mfdcr (scalar_t__) ;
 int panic (char*) ;
 int pr_err (char*,...) ;

__attribute__((used)) static irqreturn_t mcue_handler(int irq, void *data) {
 pr_err("DDR: Uncorrectable Error\n");
 pr_err("MCSTAT:            0x%08x\n",
  mfdcr(DCRN_DDR34_BASE + DCRN_DDR34_MCSTAT));
 pr_err("MCOPT1:            0x%08x\n",
  mfdcr(DCRN_DDR34_BASE + DCRN_DDR34_MCOPT1));
 pr_err("MCOPT2:            0x%08x\n",
  mfdcr(DCRN_DDR34_BASE + DCRN_DDR34_MCOPT2));
 pr_err("PHYSTAT:           0x%08x\n",
  mfdcr(DCRN_DDR34_BASE + DCRN_DDR34_PHYSTAT));
 pr_err("CFGR0:             0x%08x\n",
  mfdcr(DCRN_DDR34_BASE + DCRN_DDR34_CFGR0));
 pr_err("CFGR1:             0x%08x\n",
  mfdcr(DCRN_DDR34_BASE + DCRN_DDR34_CFGR1));
 pr_err("CFGR2:             0x%08x\n",
  mfdcr(DCRN_DDR34_BASE + DCRN_DDR34_CFGR2));
 pr_err("CFGR3:             0x%08x\n",
  mfdcr(DCRN_DDR34_BASE + DCRN_DDR34_CFGR3));
 pr_err("SCRUB_CNTL:        0x%08x\n",
  mfdcr(DCRN_DDR34_BASE + DCRN_DDR34_SCRUB_CNTL));
 pr_err("ECCERR_PORT0:      0x%08x\n",
  mfdcr(DCRN_DDR34_BASE + DCRN_DDR34_ECCERR_PORT0));
 pr_err("ECCERR_ADDR_PORT0: 0x%08x\n",
  mfdcr(DCRN_DDR34_BASE + DCRN_DDR34_ECCERR_ADDR_PORT0));
 pr_err("ECCERR_CNT_PORT0:  0x%08x\n",
  mfdcr(DCRN_DDR34_BASE + DCRN_DDR34_ECCERR_COUNT_PORT0));
 pr_err("ECC_CHECK_PORT0:   0x%08x\n",
  mfdcr(DCRN_DDR34_BASE + DCRN_DDR34_ECC_CHECK_PORT0));
 pr_err("MCER0:            0x%08x\n",
  mfdcr(DCRN_CW_BASE + DCRN_CW_MCER0));
 pr_err("MCER1:            0x%08x\n",
  mfdcr(DCRN_CW_BASE + DCRN_CW_MCER1));
 pr_err("BESR:             0x%08x\n",
  mfdcr(DCRN_PLB6MCIF_BESR0));
 pr_err("BEARL:            0x%08x\n",
  mfdcr(DCRN_PLB6MCIF_BEARL));
 pr_err("BEARH:            0x%08x\n",
  mfdcr(DCRN_PLB6MCIF_BEARH));
 panic("DDR: Uncorrectable Error\n");
}
