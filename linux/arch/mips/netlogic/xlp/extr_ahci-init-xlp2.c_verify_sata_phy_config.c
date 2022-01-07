
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int CALDUTY ;
 int PPMDRIFTMAX_HI ;
 int RXCDRCALFOSC0 ;
 int RXDPIF ;
 int check_phy_register (int ,int,int,int ) ;
 int * sata_phy_config1 ;
 int * sata_phy_config2 ;

__attribute__((used)) static void verify_sata_phy_config(u64 regbase)
{
 u32 port, i, reg;

 for (port = 0; port < 2; port++) {
  for (i = 0, reg = RXCDRCALFOSC0; reg <= CALDUTY; reg++, i++)
   check_phy_register(regbase, reg, port,
      sata_phy_config1[i]);

  for (i = 0, reg = RXDPIF; reg <= PPMDRIFTMAX_HI; reg++, i++)
   check_phy_register(regbase, reg, port,
      sata_phy_config2[i]);
 }
}
