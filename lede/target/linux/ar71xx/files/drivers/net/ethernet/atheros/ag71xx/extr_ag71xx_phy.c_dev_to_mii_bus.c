
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int dummy; } ;
struct device {int dummy; } ;


 struct device* dev_find_class (struct device*,char*) ;
 int put_device (struct device*) ;
 struct mii_bus* to_mii_bus (struct device*) ;

__attribute__((used)) static struct mii_bus *dev_to_mii_bus(struct device *dev)
{
 struct device *d;

 d = dev_find_class(dev, "mdio_bus");
 if (d != ((void*)0)) {
  struct mii_bus *bus;

  bus = to_mii_bus(d);
  put_device(d);

  return bus;
 }

 return ((void*)0);
}
