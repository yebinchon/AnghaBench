
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int DCRN_AHBPLB4_EAR ;
 int DCRN_AHBPLB4_ESR ;
 int DCRN_PLB4AHB_ESR ;
 int DCRN_PLB4AHB_SELAR ;
 int DCRN_PLB4AHB_SEUAR ;
 int DCRN_PLB4OPB0_BASE ;
 int DCRN_PLB4OPB1_BASE ;
 int DCRN_PLB4OPB2_BASE ;
 int DCRN_PLB4OPB3_BASE ;
 int DCRN_PLB4PLB6_EARH ;
 int DCRN_PLB4PLB6_EARL ;
 int DCRN_PLB4PLB6_ESR ;
 int DCRN_PLB4_P0EARH ;
 int DCRN_PLB4_P0ESRH ;
 int DCRN_PLB4_P0ESRL ;
 int DCRN_PLB4_P1EARH ;
 int DCRN_PLB4_P1ESRH ;
 int DCRN_PLB4_P1ESRL ;
 int DCRN_PLB6MCIF_BEARH ;
 int DCRN_PLB6MCIF_BEARL ;
 int DCRN_PLB6MCIF_BESR0 ;
 int DCRN_PLB6MCIF_BESR1 ;
 int DCRN_PLB6PLB4_EARH ;
 int DCRN_PLB6PLB4_EARL ;
 int DCRN_PLB6PLB4_ESR ;
 int DCRN_PLB6_ERR ;
 int DCRN_PLB6_SHD ;
 int l2regs () ;
 int mfdcr (int ) ;
 int panic (char*) ;
 int pr_err (char*,...) ;
 int show_plbopb_regs (int ,int) ;

__attribute__((used)) static irqreturn_t bus_err_handler(int irq, void *data)
{
 pr_err("Bus Error\n");

 l2regs();

 pr_err("\nPLB6 Controller:\n");
 pr_err("BC_SHD: 0x%08x\n", mfdcr(DCRN_PLB6_SHD));
 pr_err("BC_ERR: 0x%08x\n", mfdcr(DCRN_PLB6_ERR));

 pr_err("\nPLB6-to-PLB4 Bridge:\n");
 pr_err("ESR:  0x%08x\n", mfdcr(DCRN_PLB6PLB4_ESR));
 pr_err("EARH: 0x%08x\n", mfdcr(DCRN_PLB6PLB4_EARH));
 pr_err("EARL: 0x%08x\n", mfdcr(DCRN_PLB6PLB4_EARL));

 pr_err("\nPLB4-to-PLB6 Bridge:\n");
 pr_err("ESR:  0x%08x\n", mfdcr(DCRN_PLB4PLB6_ESR));
 pr_err("EARH: 0x%08x\n", mfdcr(DCRN_PLB4PLB6_EARH));
 pr_err("EARL: 0x%08x\n", mfdcr(DCRN_PLB4PLB6_EARL));

 pr_err("\nPLB6-to-MCIF Bridge:\n");
 pr_err("BESR0: 0x%08x\n", mfdcr(DCRN_PLB6MCIF_BESR0));
 pr_err("BESR1: 0x%08x\n", mfdcr(DCRN_PLB6MCIF_BESR1));
 pr_err("BEARH: 0x%08x\n", mfdcr(DCRN_PLB6MCIF_BEARH));
 pr_err("BEARL: 0x%08x\n", mfdcr(DCRN_PLB6MCIF_BEARL));

 pr_err("\nPLB4 Arbiter:\n");
 pr_err("P0ESRH 0x%08x\n", mfdcr(DCRN_PLB4_P0ESRH));
 pr_err("P0ESRL 0x%08x\n", mfdcr(DCRN_PLB4_P0ESRL));
 pr_err("P0EARH 0x%08x\n", mfdcr(DCRN_PLB4_P0EARH));
 pr_err("P0EARH 0x%08x\n", mfdcr(DCRN_PLB4_P0EARH));
 pr_err("P1ESRH 0x%08x\n", mfdcr(DCRN_PLB4_P1ESRH));
 pr_err("P1ESRL 0x%08x\n", mfdcr(DCRN_PLB4_P1ESRL));
 pr_err("P1EARH 0x%08x\n", mfdcr(DCRN_PLB4_P1EARH));
 pr_err("P1EARH 0x%08x\n", mfdcr(DCRN_PLB4_P1EARH));

 show_plbopb_regs(DCRN_PLB4OPB0_BASE, 0);
 show_plbopb_regs(DCRN_PLB4OPB1_BASE, 1);
 show_plbopb_regs(DCRN_PLB4OPB2_BASE, 2);
 show_plbopb_regs(DCRN_PLB4OPB3_BASE, 3);

 pr_err("\nPLB4-to-AHB Bridge:\n");
 pr_err("ESR:   0x%08x\n", mfdcr(DCRN_PLB4AHB_ESR));
 pr_err("SEUAR: 0x%08x\n", mfdcr(DCRN_PLB4AHB_SEUAR));
 pr_err("SELAR: 0x%08x\n", mfdcr(DCRN_PLB4AHB_SELAR));

 pr_err("\nAHB-to-PLB4 Bridge:\n");
 pr_err("\nESR: 0x%08x\n", mfdcr(DCRN_AHBPLB4_ESR));
 pr_err("\nEAR: 0x%08x\n", mfdcr(DCRN_AHBPLB4_EAR));
 panic("Bus Error\n");
}
