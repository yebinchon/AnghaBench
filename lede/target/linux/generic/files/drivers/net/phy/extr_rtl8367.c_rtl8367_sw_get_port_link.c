
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct switch_port_link {int link; int duplex; int rx_flow; int tx_flow; int aneg; int speed; } ;
struct switch_dev {int dummy; } ;
struct rtl8366_smi {int dummy; } ;


 int EINVAL ;
 int RTL8367_NUM_PORTS ;
 int RTL8367_PORT_STATUS_DUPLEX ;
 int RTL8367_PORT_STATUS_LINK ;
 int RTL8367_PORT_STATUS_NWAY ;
 int RTL8367_PORT_STATUS_REG (int) ;
 int RTL8367_PORT_STATUS_RXPAUSE ;
 int RTL8367_PORT_STATUS_SPEED_MASK ;
 int RTL8367_PORT_STATUS_TXPAUSE ;
 int SWITCH_PORT_SPEED_10 ;
 int SWITCH_PORT_SPEED_100 ;
 int SWITCH_PORT_SPEED_1000 ;
 int SWITCH_PORT_SPEED_UNKNOWN ;
 int rtl8366_smi_read_reg (struct rtl8366_smi*,int ,int*) ;
 struct rtl8366_smi* sw_to_rtl8366_smi (struct switch_dev*) ;

__attribute__((used)) static int rtl8367_sw_get_port_link(struct switch_dev *dev,
        int port,
        struct switch_port_link *link)
{
 struct rtl8366_smi *smi = sw_to_rtl8366_smi(dev);
 u32 data = 0;
 u32 speed;

 if (port >= RTL8367_NUM_PORTS)
  return -EINVAL;

 rtl8366_smi_read_reg(smi, RTL8367_PORT_STATUS_REG(port), &data);

 link->link = !!(data & RTL8367_PORT_STATUS_LINK);
 if (!link->link)
  return 0;

 link->duplex = !!(data & RTL8367_PORT_STATUS_DUPLEX);
 link->rx_flow = !!(data & RTL8367_PORT_STATUS_RXPAUSE);
 link->tx_flow = !!(data & RTL8367_PORT_STATUS_TXPAUSE);
 link->aneg = !!(data & RTL8367_PORT_STATUS_NWAY);

 speed = (data & RTL8367_PORT_STATUS_SPEED_MASK);
 switch (speed) {
 case 0:
  link->speed = SWITCH_PORT_SPEED_10;
  break;
 case 1:
  link->speed = SWITCH_PORT_SPEED_100;
  break;
 case 2:
  link->speed = SWITCH_PORT_SPEED_1000;
  break;
 default:
  link->speed = SWITCH_PORT_SPEED_UNKNOWN;
  break;
 }

 return 0;
}
