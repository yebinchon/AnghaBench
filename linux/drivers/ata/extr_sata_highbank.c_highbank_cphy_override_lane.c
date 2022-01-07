
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct TYPE_2__ {size_t lane_mapping; int tx_atten; int * phy_base; } ;


 scalar_t__ CPHY_RX_INPUT_STS ;
 int SPHY_HALF_RATE ;
 size_t SPHY_LANE ;
 int combo_phy_read (size_t,scalar_t__) ;
 int cphy_override_rx_mode (size_t,int) ;
 int cphy_override_tx_attenuation (size_t,int ) ;
 TYPE_1__* port_data ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void highbank_cphy_override_lane(u8 sata_port)
{
 u8 lane = port_data[sata_port].lane_mapping;
 u32 tmp, k = 0;

 if (unlikely(port_data[sata_port].phy_base == ((void*)0)))
  return;
 do {
  tmp = combo_phy_read(sata_port, CPHY_RX_INPUT_STS +
      lane * SPHY_LANE);
 } while ((tmp & SPHY_HALF_RATE) && (k++ < 1000));
 cphy_override_rx_mode(sata_port, 3);
 cphy_override_tx_attenuation(sata_port, port_data[sata_port].tx_atten);
}
