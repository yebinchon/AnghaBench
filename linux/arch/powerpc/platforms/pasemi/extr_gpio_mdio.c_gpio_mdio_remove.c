
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mii_bus {int * priv; } ;


 struct mii_bus* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int kfree (int *) ;
 int mdiobus_free (struct mii_bus*) ;
 int mdiobus_unregister (struct mii_bus*) ;

__attribute__((used)) static int gpio_mdio_remove(struct platform_device *dev)
{
 struct mii_bus *bus = dev_get_drvdata(&dev->dev);

 mdiobus_unregister(bus);

 dev_set_drvdata(&dev->dev, ((void*)0));

 kfree(bus->priv);
 bus->priv = ((void*)0);
 mdiobus_free(bus);

 return 0;
}
