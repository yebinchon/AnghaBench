
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mii_bus {int mdio_lock; int (* write ) (struct mii_bus*,int,int ,int) ;} ;
struct ar8xxx_priv {struct mii_bus* mii_bus; } ;


 int ar8xxx_mii_read32 (struct ar8xxx_priv*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int split_addr (int ,int*,int*,int*) ;
 int stub1 (struct mii_bus*,int,int ,int) ;
 int wait_for_page_switch () ;

u32
ar8xxx_read(struct ar8xxx_priv *priv, int reg)
{
 struct mii_bus *bus = priv->mii_bus;
 u16 r1, r2, page;
 u32 val;

 split_addr((u32) reg, &r1, &r2, &page);

 mutex_lock(&bus->mdio_lock);

 bus->write(bus, 0x18, 0, page);
 wait_for_page_switch();
 val = ar8xxx_mii_read32(priv, 0x10 | r2, r1);

 mutex_unlock(&bus->mdio_lock);

 return val;
}
