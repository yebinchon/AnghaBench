
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ar8xxx_priv {int init; int dev; TYPE_1__* chip; } ;
struct TYPE_2__ {int (* hw_init ) (struct ar8xxx_priv*) ;} ;


 int ar8xxx_mib_start (struct ar8xxx_priv*) ;
 int ar8xxx_sw_reset_switch (int *) ;
 int stub1 (struct ar8xxx_priv*) ;

__attribute__((used)) static int
ar8xxx_start(struct ar8xxx_priv *priv)
{
 int ret;

 priv->init = 1;

 ret = priv->chip->hw_init(priv);
 if (ret)
  return ret;

 ret = ar8xxx_sw_reset_switch(&priv->dev);
 if (ret)
  return ret;

 priv->init = 0;

 ar8xxx_mib_start(priv);

 return 0;
}
