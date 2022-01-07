
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mii_bus {char* name; int id; TYPE_1__* parent; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int MII_BUS_ID_SIZE ;
 struct mii_bus* alloc_mdio_bitbang (int *) ;
 struct device_node* ep8248e_bcsr_node ;
 int ep8248e_mdio_ctrl ;
 int free_mdio_bitbang (struct mii_bus*) ;
 int of_address_to_resource (int ,int ,struct resource*) ;
 struct device_node* of_get_parent (int ) ;
 int of_mdiobus_register (struct mii_bus*,int ) ;
 int of_node_put (struct device_node*) ;
 int snprintf (int ,int ,char*,int) ;

__attribute__((used)) static int ep8248e_mdio_probe(struct platform_device *ofdev)
{
 struct mii_bus *bus;
 struct resource res;
 struct device_node *node;
 int ret;

 node = of_get_parent(ofdev->dev.of_node);
 of_node_put(node);
 if (node != ep8248e_bcsr_node)
  return -ENODEV;

 ret = of_address_to_resource(ofdev->dev.of_node, 0, &res);
 if (ret)
  return ret;

 bus = alloc_mdio_bitbang(&ep8248e_mdio_ctrl);
 if (!bus)
  return -ENOMEM;

 bus->name = "ep8248e-mdio-bitbang";
 bus->parent = &ofdev->dev;
 snprintf(bus->id, MII_BUS_ID_SIZE, "%x", res.start);

 ret = of_mdiobus_register(bus, ofdev->dev.of_node);
 if (ret)
  goto err_free_bus;

 return 0;
err_free_bus:
 free_mdio_bitbang(bus);
 return ret;
}
