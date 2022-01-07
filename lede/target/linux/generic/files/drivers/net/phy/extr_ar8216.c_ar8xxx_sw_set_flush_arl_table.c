
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switch_val {int dummy; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct ar8xxx_priv {int reg_mutex; TYPE_1__* chip; } ;
struct TYPE_2__ {int (* atu_flush ) (struct ar8xxx_priv*) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct ar8xxx_priv*) ;
 struct ar8xxx_priv* swdev_to_ar8xxx (struct switch_dev*) ;

int
ar8xxx_sw_set_flush_arl_table(struct switch_dev *dev,
         const struct switch_attr *attr,
         struct switch_val *val)
{
 struct ar8xxx_priv *priv = swdev_to_ar8xxx(dev);
 int ret;

 mutex_lock(&priv->reg_mutex);
 ret = priv->chip->atu_flush(priv);
 mutex_unlock(&priv->reg_mutex);

 return ret;
}
