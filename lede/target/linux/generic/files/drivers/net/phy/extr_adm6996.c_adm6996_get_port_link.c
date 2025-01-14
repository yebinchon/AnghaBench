
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct switch_port_link {int link; int aneg; int duplex; int tx_flow; int rx_flow; int speed; } ;
struct switch_dev {int dummy; } ;
struct adm6996_priv {int dummy; } ;


 int ADM_NUM_PORTS ;
 int ADM_PS0 ;
 int ADM_PS1 ;
 int ADM_PS2 ;
 int ADM_PS_DS ;
 int ADM_PS_FCS ;
 int ADM_PS_LS ;
 int ADM_PS_SS ;
 int EINVAL ;
 int SWITCH_PORT_SPEED_10 ;
 int SWITCH_PORT_SPEED_100 ;
 int r16 (struct adm6996_priv*,int ) ;
 struct adm6996_priv* to_adm (struct switch_dev*) ;

__attribute__((used)) static int
adm6996_get_port_link(struct switch_dev *dev, int port,
  struct switch_port_link *link)
{
 struct adm6996_priv *priv = to_adm(dev);

 u16 reg = 0;

 if (port >= ADM_NUM_PORTS)
  return -EINVAL;

 switch (port) {
 case 0:
  reg = r16(priv, ADM_PS0);
  break;
 case 1:
  reg = r16(priv, ADM_PS0);
  reg = reg >> 8;
  break;
 case 2:
  reg = r16(priv, ADM_PS1);
  break;
 case 3:
  reg = r16(priv, ADM_PS1);
  reg = reg >> 8;
  break;
 case 4:
  reg = r16(priv, ADM_PS1);
  reg = reg >> 12;
  break;
 case 5:
  reg = r16(priv, ADM_PS2);

  reg = (reg & 3) | ((reg & 24) >> 1);
  break;
 default:
  return -EINVAL;
 }

 link->link = reg & ADM_PS_LS;
 if (!link->link)
  return 0;
 link->aneg = 1;
 link->duplex = reg & ADM_PS_DS;
 link->tx_flow = reg & ADM_PS_FCS;
 link->rx_flow = reg & ADM_PS_FCS;
 if (reg & ADM_PS_SS)
  link->speed = SWITCH_PORT_SPEED_100;
 else
  link->speed = SWITCH_PORT_SPEED_10;

 return 0;
}
