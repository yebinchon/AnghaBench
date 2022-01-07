
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int dummy; } ;


 int cns3xxx_mdio_cmd (struct mii_bus*,int,int,int ,int ) ;
 int mdio_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cns3xxx_mdio_read(struct mii_bus *bus, int phy_id, int location)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&mdio_lock, flags);
 ret = cns3xxx_mdio_cmd(bus, phy_id, location, 0, 0);
 spin_unlock_irqrestore(&mdio_lock, flags);
 return ret;
}
