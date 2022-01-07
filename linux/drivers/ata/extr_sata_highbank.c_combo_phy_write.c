
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int CR_START ;
 int CR_WR_RDN ;
 int SERDES_CR_ADDR ;
 int SERDES_CR_CTL ;
 int SERDES_CR_DATA ;
 int __combo_phy_reg_write (int ,int ,int) ;
 int combo_phy_wait_for_ready (int ) ;

__attribute__((used)) static void combo_phy_write(u8 sata_port, u32 addr, u32 data)
{
 combo_phy_wait_for_ready(sata_port);
 __combo_phy_reg_write(sata_port, SERDES_CR_ADDR, addr);
 __combo_phy_reg_write(sata_port, SERDES_CR_DATA, data);
 __combo_phy_reg_write(sata_port, SERDES_CR_CTL, CR_WR_RDN | CR_START);
}
