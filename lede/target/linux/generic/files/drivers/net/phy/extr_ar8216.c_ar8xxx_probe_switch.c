
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {int ops; int ports; int vlans; int name; int cpu_port; } ;
struct ar8xxx_priv {struct switch_dev dev; struct ar8xxx_chip* chip; } ;
struct ar8xxx_chip {int swops; int ports; int vlans; int name; } ;


 int AR8216_PORT_CPU ;
 int ar8xxx_id_chip (struct ar8xxx_priv*) ;
 int ar8xxx_mib_init (struct ar8xxx_priv*) ;

__attribute__((used)) static int
ar8xxx_probe_switch(struct ar8xxx_priv *priv)
{
 const struct ar8xxx_chip *chip;
 struct switch_dev *swdev;
 int ret;

 ret = ar8xxx_id_chip(priv);
 if (ret)
  return ret;

 chip = priv->chip;

 swdev = &priv->dev;
 swdev->cpu_port = AR8216_PORT_CPU;
 swdev->name = chip->name;
 swdev->vlans = chip->vlans;
 swdev->ports = chip->ports;
 swdev->ops = chip->swops;

 ret = ar8xxx_mib_init(priv);
 if (ret)
  return ret;

 return 0;
}
