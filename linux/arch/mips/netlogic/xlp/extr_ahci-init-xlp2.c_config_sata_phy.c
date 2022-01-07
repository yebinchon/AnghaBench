
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;


 int CALDUTY ;
 int PPMDRIFTMAX_HI ;
 int RXCDRCALFOSC0 ;
 int RXDPIF ;
 int read_phy_reg (int ,int,int) ;
 int* sata_phy_config1 ;
 int* sata_phy_config2 ;
 int write_phy_reg (int ,int,int,int) ;

__attribute__((used)) static void config_sata_phy(u64 regbase)
{
 u32 port, i, reg;
 u8 val;

 for (port = 0; port < 2; port++) {
  for (i = 0, reg = RXCDRCALFOSC0; reg <= CALDUTY; reg++, i++)
   write_phy_reg(regbase, reg, port, sata_phy_config1[i]);

  for (i = 0, reg = RXDPIF; reg <= PPMDRIFTMAX_HI; reg++, i++)
   write_phy_reg(regbase, reg, port, sata_phy_config2[i]);


  write_phy_reg(regbase, 0x800F, port, 0x1f);

  val = read_phy_reg(regbase, 0x0029, port);
  write_phy_reg(regbase, 0x0029, port, val | (0x7 << 1));

  val = read_phy_reg(regbase, 0x0056, port);
  write_phy_reg(regbase, 0x0056, port, val & ~(1 << 3));

  val = read_phy_reg(regbase, 0x0018, port);
  write_phy_reg(regbase, 0x0018, port, val & ~(0x7 << 0));
 }
}
