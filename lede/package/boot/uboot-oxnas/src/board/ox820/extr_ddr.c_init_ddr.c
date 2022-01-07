
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_CTRL_CLK_DDR ;
 int SYS_CTRL_CLK_DDRCK ;
 int SYS_CTRL_CLK_DDRPHY ;
 int SYS_CTRL_RST_DDR ;
 int SYS_CTRL_RST_DDR_PHY ;
 int ddr_setup (int) ;
 int enable_clock (int ) ;
 int reset_block (int ,int ) ;

void init_ddr(int mhz)
{

 enable_clock(SYS_CTRL_CLK_DDRPHY);
 enable_clock(SYS_CTRL_CLK_DDR);
 enable_clock(SYS_CTRL_CLK_DDRCK);


 reset_block(SYS_CTRL_RST_DDR_PHY, 0);
 reset_block(SYS_CTRL_RST_DDR, 0);


 ddr_setup(mhz >> 1);
 return;
}
