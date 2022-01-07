
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int CR_BUSY ;
 int SERDES_CR_CTL ;
 int __combo_phy_reg_read (int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void combo_phy_wait_for_ready(u8 sata_port)
{
 while (__combo_phy_reg_read(sata_port, SERDES_CR_CTL) & CR_BUSY)
  udelay(5);
}
