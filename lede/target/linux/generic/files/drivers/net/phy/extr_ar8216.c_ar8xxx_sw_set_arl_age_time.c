
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int i; } ;
struct switch_val {TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct ar8xxx_priv {int arl_age_time; } ;


 int EINVAL ;
 int ar8xxx_age_time_val (int) ;
 struct ar8xxx_priv* swdev_to_ar8xxx (struct switch_dev*) ;

int
ar8xxx_sw_set_arl_age_time(struct switch_dev *dev, const struct switch_attr *attr,
      struct switch_val *val)
{
 struct ar8xxx_priv *priv = swdev_to_ar8xxx(dev);
 int age_time = val->value.i;
 u32 age_time_val;

 if (age_time < 0)
  return -EINVAL;

 age_time_val = ar8xxx_age_time_val(age_time);
 if (age_time_val == 0 || age_time_val > 0xffff)
  return -EINVAL;

 priv->arl_age_time = age_time;
 return 0;
}
