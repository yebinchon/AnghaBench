
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ addr; int bus; int dev; } ;
struct phy_device {struct b53_device* priv; int supported; int advertising; TYPE_1__ mdio; } ;
struct b53_device {int current_page; int dev; int reg_mutex; int * pdata; int * ops; int priv; } ;


 scalar_t__ B53_PSEUDO_PHY ;
 int ENODEV ;
 int ENOMEM ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_100baseT_Full ;
 int b53_mdio_ops ;
 struct b53_device* b53_switch_alloc (int *,int *,int ) ;
 int b53_switch_detect (struct b53_device*) ;
 int b53_switch_register (struct b53_device*) ;
 int dev_err (int ,char*,int) ;
 scalar_t__ is5325 (struct b53_device*) ;
 scalar_t__ is5365 (struct b53_device*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int b53_phy_probe(struct phy_device *phydev)
{
 struct b53_device *dev;
 int ret;


 if (phydev->mdio.addr != B53_PSEUDO_PHY && phydev->mdio.addr != 0)
  return -ENODEV;

 dev = b53_switch_alloc(&phydev->mdio.dev, &b53_mdio_ops, phydev->mdio.bus);
 if (!dev)
  return -ENOMEM;

 dev->current_page = 0xff;
 dev->priv = phydev->mdio.bus;
 dev->ops = &b53_mdio_ops;
 dev->pdata = ((void*)0);
 mutex_init(&dev->reg_mutex);

 ret = b53_switch_detect(dev);
 if (ret)
  return ret;

 if (is5325(dev) || is5365(dev))
  phydev->supported = SUPPORTED_100baseT_Full;
 else
  phydev->supported = SUPPORTED_1000baseT_Full;

 phydev->advertising = phydev->supported;

 ret = b53_switch_register(dev);
 if (ret) {
  dev_err(dev->dev, "failed to register switch: %i\n", ret);
  return ret;
 }

 phydev->priv = dev;

 return 0;
}
