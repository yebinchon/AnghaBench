
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_bus {int dummy; } ;


 int cns3xxx_mdio_cmd (struct mii_bus*,int,int,int,int ) ;
 int mdio_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cns3xxx_mdio_write(struct mii_bus *bus, int phy_id, int location, u16 val)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&mdio_lock, flags);
 ret = cns3xxx_mdio_cmd(bus, phy_id, location, 1, val);
 spin_unlock_irqrestore(&mdio_lock, flags);
 return ret;
}
