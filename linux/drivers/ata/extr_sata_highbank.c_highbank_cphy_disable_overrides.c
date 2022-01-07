
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct TYPE_2__ {size_t lane_mapping; int * phy_base; } ;


 scalar_t__ CPHY_RX_INPUT_STS ;
 scalar_t__ CPHY_RX_OVERRIDE ;
 int CPHY_SATA_RX_OVERRIDE ;
 size_t SPHY_LANE ;
 int combo_phy_read (size_t,scalar_t__) ;
 int combo_phy_write (size_t,scalar_t__,int ) ;
 TYPE_1__* port_data ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void highbank_cphy_disable_overrides(u8 sata_port)
{
 u8 lane = port_data[sata_port].lane_mapping;
 u32 tmp;
 if (unlikely(port_data[sata_port].phy_base == ((void*)0)))
  return;
 tmp = combo_phy_read(sata_port, CPHY_RX_INPUT_STS + lane * SPHY_LANE);
 tmp &= ~CPHY_SATA_RX_OVERRIDE;
 combo_phy_write(sata_port, CPHY_RX_OVERRIDE + lane * SPHY_LANE, tmp);
}
