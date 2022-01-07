
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct switch_port_link {int link; int duplex; int speed; } ;
struct switch_dev {int dummy; } ;


 int MV_PORTREG (int ,int) ;
 int MV_PORT_STATUS_FDX ;
 int MV_PORT_STATUS_LINK ;



 int MV_PORT_STATUS_SPEED_MASK ;
 int MV_PORT_STATUS_SPEED_SHIFT ;
 int STATUS ;
 int SWITCH_PORT_SPEED_10 ;
 int SWITCH_PORT_SPEED_100 ;
 int SWITCH_PORT_SPEED_1000 ;
 int sr16 (struct switch_dev*,int ) ;

__attribute__((used)) static int
mvsw61xx_get_port_link(struct switch_dev *dev, int port,
  struct switch_port_link *link)
{
 u16 status, speed;

 status = sr16(dev, MV_PORTREG(STATUS, port));

 link->link = status & MV_PORT_STATUS_LINK;
 if (!link->link)
  return 0;

 link->duplex = status & MV_PORT_STATUS_FDX;

 speed = (status & MV_PORT_STATUS_SPEED_MASK) >>
   MV_PORT_STATUS_SPEED_SHIFT;

 switch (speed) {
 case 130:
  link->speed = SWITCH_PORT_SPEED_10;
  break;
 case 129:
  link->speed = SWITCH_PORT_SPEED_100;
  break;
 case 128:
  link->speed = SWITCH_PORT_SPEED_1000;
  break;
 }

 return 0;
}
