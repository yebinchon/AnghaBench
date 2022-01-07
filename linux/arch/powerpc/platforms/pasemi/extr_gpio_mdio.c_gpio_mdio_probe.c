
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct mii_bus {char* name; unsigned int mdc_pin; unsigned int mdio_pin; struct device* parent; struct mii_bus* priv; int id; int * reset; int * write; int * read; } ;
struct gpio_priv {char* name; unsigned int mdc_pin; unsigned int mdio_pin; struct device* parent; struct gpio_priv* priv; int id; int * reset; int * write; int * read; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MII_BUS_ID_SIZE ;
 int dev_set_drvdata (struct device*,struct mii_bus*) ;
 int gpio_mdio_read ;
 int gpio_mdio_reset ;
 int gpio_mdio_write ;
 int kfree (struct mii_bus*) ;
 struct mii_bus* kzalloc (int,int ) ;
 struct mii_bus* mdiobus_alloc () ;
 unsigned int* of_get_property (struct device_node*,char*,int *) ;
 int of_mdiobus_register (struct mii_bus*,struct device_node*) ;
 int pr_err (char*,char*,int) ;
 int snprintf (int ,int ,char*,unsigned int const) ;

__attribute__((used)) static int gpio_mdio_probe(struct platform_device *ofdev)
{
 struct device *dev = &ofdev->dev;
 struct device_node *np = ofdev->dev.of_node;
 struct mii_bus *new_bus;
 struct gpio_priv *priv;
 const unsigned int *prop;
 int err;

 err = -ENOMEM;
 priv = kzalloc(sizeof(struct gpio_priv), GFP_KERNEL);
 if (!priv)
  goto out;

 new_bus = mdiobus_alloc();

 if (!new_bus)
  goto out_free_priv;

 new_bus->name = "pasemi gpio mdio bus";
 new_bus->read = &gpio_mdio_read;
 new_bus->write = &gpio_mdio_write;
 new_bus->reset = &gpio_mdio_reset;

 prop = of_get_property(np, "reg", ((void*)0));
 snprintf(new_bus->id, MII_BUS_ID_SIZE, "%x", *prop);
 new_bus->priv = priv;

 prop = of_get_property(np, "mdc-pin", ((void*)0));
 priv->mdc_pin = *prop;

 prop = of_get_property(np, "mdio-pin", ((void*)0));
 priv->mdio_pin = *prop;

 new_bus->parent = dev;
 dev_set_drvdata(dev, new_bus);

 err = of_mdiobus_register(new_bus, np);

 if (err != 0) {
  pr_err("%s: Cannot register as MDIO bus, err %d\n",
    new_bus->name, err);
  goto out_free_irq;
 }

 return 0;

out_free_irq:
 kfree(new_bus);
out_free_priv:
 kfree(priv);
out:
 return err;
}
