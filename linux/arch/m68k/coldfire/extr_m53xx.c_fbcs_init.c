
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXT_SRAM_ADDRESS ;
 int FLASH_ADDRESS ;
 int MCFGPIO_PAR_CS ;
 int MCF_FBCS0_CSAR ;
 int MCF_FBCS0_CSCR ;
 int MCF_FBCS0_CSMR ;
 int MCF_FBCS1_CSAR ;
 int MCF_FBCS1_CSCR ;
 int MCF_FBCS1_CSMR ;
 int MCF_FBCS_CSCR_AA ;
 int MCF_FBCS_CSCR_BEM ;
 int MCF_FBCS_CSCR_PS_16 ;
 int MCF_FBCS_CSCR_SBM ;
 int MCF_FBCS_CSCR_WS (int) ;
 int MCF_FBCS_CSMR_BAM_2M ;
 int MCF_FBCS_CSMR_BAM_32M ;
 int MCF_FBCS_CSMR_BAM_512K ;
 int MCF_FBCS_CSMR_V ;
 int writeb (int,int ) ;
 int writel (int,int ) ;
 int writew (int,int) ;

void fbcs_init(void)
{
 writeb(0x3E, MCFGPIO_PAR_CS);


 writel(0x10080000, MCF_FBCS1_CSAR);

 writel(0x002A3780, MCF_FBCS1_CSCR);
 writel(MCF_FBCS_CSMR_BAM_2M | MCF_FBCS_CSMR_V, MCF_FBCS1_CSMR);


 writew(0xffff, 0x10080000);


 writel(EXT_SRAM_ADDRESS, MCF_FBCS1_CSAR);
 writel(MCF_FBCS_CSCR_PS_16 |
  MCF_FBCS_CSCR_AA |
  MCF_FBCS_CSCR_SBM |
  MCF_FBCS_CSCR_WS(1),
  MCF_FBCS1_CSCR);
 writel(MCF_FBCS_CSMR_BAM_512K | MCF_FBCS_CSMR_V, MCF_FBCS1_CSMR);


 writel(FLASH_ADDRESS, MCF_FBCS0_CSAR);
 writel(MCF_FBCS_CSCR_PS_16 |
  MCF_FBCS_CSCR_BEM |
  MCF_FBCS_CSCR_AA |
  MCF_FBCS_CSCR_SBM |
  MCF_FBCS_CSCR_WS(7),
  MCF_FBCS0_CSCR);
 writel(MCF_FBCS_CSMR_BAM_32M | MCF_FBCS_CSMR_V, MCF_FBCS0_CSMR);
}
