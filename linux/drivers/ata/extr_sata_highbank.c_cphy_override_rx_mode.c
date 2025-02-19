
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct TYPE_2__ {size_t lane_mapping; } ;


 scalar_t__ CPHY_RX_INPUT_STS ;
 scalar_t__ CPHY_RX_OVERRIDE ;
 int CPHY_SATA_DPLL_MODE ;
 int CPHY_SATA_DPLL_RESET ;
 int CPHY_SATA_DPLL_SHIFT ;
 int CPHY_SATA_RX_OVERRIDE ;
 size_t SPHY_LANE ;
 int combo_phy_read (size_t,scalar_t__) ;
 int combo_phy_write (size_t,scalar_t__,int) ;
 int msleep (int) ;
 TYPE_1__* port_data ;

__attribute__((used)) static void cphy_override_rx_mode(u8 sata_port, u32 val)
{
 u8 lane = port_data[sata_port].lane_mapping;
 u32 tmp;
 tmp = combo_phy_read(sata_port, CPHY_RX_INPUT_STS + lane * SPHY_LANE);
 tmp &= ~CPHY_SATA_RX_OVERRIDE;
 combo_phy_write(sata_port, CPHY_RX_OVERRIDE + lane * SPHY_LANE, tmp);

 tmp |= CPHY_SATA_RX_OVERRIDE;
 combo_phy_write(sata_port, CPHY_RX_OVERRIDE + lane * SPHY_LANE, tmp);

 tmp &= ~CPHY_SATA_DPLL_MODE;
 tmp |= val << CPHY_SATA_DPLL_SHIFT;
 combo_phy_write(sata_port, CPHY_RX_OVERRIDE + lane * SPHY_LANE, tmp);

 tmp |= CPHY_SATA_DPLL_RESET;
 combo_phy_write(sata_port, CPHY_RX_OVERRIDE + lane * SPHY_LANE, tmp);

 tmp &= ~CPHY_SATA_DPLL_RESET;
 combo_phy_write(sata_port, CPHY_RX_OVERRIDE + lane * SPHY_LANE, tmp);

 msleep(15);
}
