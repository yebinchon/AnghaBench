
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int (* write ) (struct mii_bus*,int,int ,int) ;} ;


 int BMCR_ANENABLE ;
 int BMCR_RESET ;
 int BMCR_SPEED1000 ;
 int MII_BMCR ;
 int mdelay (int) ;
 int stub1 (struct mii_bus*,int,int ,int) ;

__attribute__((used)) static void mynet_n750_mdio_fixup(struct mii_bus *bus)
{
 int i;

 for (i = 0; i < 5; i++)
  bus->write(bus, i, MII_BMCR,
      (BMCR_RESET | BMCR_ANENABLE | BMCR_SPEED1000));

 mdelay(1000);
}
