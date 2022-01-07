
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int CR_START ;
 int SERDES_CR_ADDR ;
 int SERDES_CR_CTL ;
 int SERDES_CR_DATA ;
 int __combo_phy_reg_read (int ,int ) ;
 int __combo_phy_reg_write (int ,int ,int ) ;
 int combo_phy_wait_for_ready (int ) ;

__attribute__((used)) static u32 combo_phy_read(u8 sata_port, u32 addr)
{
 combo_phy_wait_for_ready(sata_port);
 __combo_phy_reg_write(sata_port, SERDES_CR_ADDR, addr);
 __combo_phy_reg_write(sata_port, SERDES_CR_CTL, CR_START);
 combo_phy_wait_for_ready(sata_port);
 return __combo_phy_reg_read(sata_port, SERDES_CR_DATA);
}
