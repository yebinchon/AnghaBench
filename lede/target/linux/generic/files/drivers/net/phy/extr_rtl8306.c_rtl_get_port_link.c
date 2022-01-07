
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_port_link {int speed; void* aneg; void* duplex; void* link; } ;
struct switch_dev {int dummy; } ;


 int DUPLEX ;
 int EINVAL ;
 int LINK ;
 int NWAY ;
 int RTL8306_NUM_PORTS ;
 int RTL_PORT_REG (int,int ) ;
 int SPEED ;
 int SWITCH_PORT_SPEED_10 ;
 int SWITCH_PORT_SPEED_100 ;
 void* rtl_get (struct switch_dev*,int ) ;

__attribute__((used)) static int
rtl_get_port_link(struct switch_dev *dev, int port, struct switch_port_link *link)
{
 if (port >= RTL8306_NUM_PORTS)
  return -EINVAL;


 link->link = rtl_get(dev, RTL_PORT_REG(port, LINK));
 if (!link->link)
  link->link = rtl_get(dev, RTL_PORT_REG(port, LINK));

 if (!link->link)
  return 0;

 link->duplex = rtl_get(dev, RTL_PORT_REG(port, DUPLEX));
 link->aneg = rtl_get(dev, RTL_PORT_REG(port, NWAY));

 if (rtl_get(dev, RTL_PORT_REG(port, SPEED)))
  link->speed = SWITCH_PORT_SPEED_100;
 else
  link->speed = SWITCH_PORT_SPEED_10;

 return 0;
}
