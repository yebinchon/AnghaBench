
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int addr; struct mii_bus* bus; } ;
struct phy_device {int phy_id; TYPE_1__ mdio; } ;
struct mii_bus {int (* read ) (struct mii_bus*,int ) ;} ;


 int IDENT ;
 int MVSWITCH_MAGIC ;
 int MV_IDENT_MASK ;
 int MV_IDENT_VALUE ;
 int MV_PORTREG (int ,int ) ;
 int stub1 (struct mii_bus*,int ) ;

__attribute__((used)) static int
mvswitch_fixup(struct phy_device *dev)
{
 struct mii_bus *bus = dev->mdio.bus;
 u16 reg;

 if (dev->mdio.addr != 0x10)
  return 0;

 reg = bus->read(bus, MV_PORTREG(IDENT, 0)) & MV_IDENT_MASK;
 if (reg != MV_IDENT_VALUE)
  return 0;

 dev->phy_id = MVSWITCH_MAGIC;
 return 0;
}
