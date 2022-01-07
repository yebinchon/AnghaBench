
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {int dummy; } ;
struct rtl_phyregs {void* duplex; void* speed; void* nway; } ;


 int DUPLEX ;
 int NWAY ;
 int RTL_PORT_REG (int,int ) ;
 int SPEED ;
 void* rtl_get (struct switch_dev*,int ) ;

__attribute__((used)) static void
rtl_phy_save(struct switch_dev *dev, int port, struct rtl_phyregs *regs)
{
 regs->nway = rtl_get(dev, RTL_PORT_REG(port, NWAY));
 regs->speed = rtl_get(dev, RTL_PORT_REG(port, SPEED));
 regs->duplex = rtl_get(dev, RTL_PORT_REG(port, DUPLEX));
}
