
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DM365_SD1_CLK ;
 int DM365_SD1_CMD ;
 int DM365_SD1_DATA0 ;
 int DM365_SD1_DATA1 ;
 int DM365_SD1_DATA2 ;
 int DM365_SD1_DATA3 ;
 int davinci_cfg_reg (int ) ;

__attribute__((used)) static void dm365evm_mmc_configure(void)
{





 davinci_cfg_reg(DM365_SD1_CLK);
 davinci_cfg_reg(DM365_SD1_CMD);
 davinci_cfg_reg(DM365_SD1_DATA3);
 davinci_cfg_reg(DM365_SD1_DATA2);
 davinci_cfg_reg(DM365_SD1_DATA1);
 davinci_cfg_reg(DM365_SD1_DATA0);
}
