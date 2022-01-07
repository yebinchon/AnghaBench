
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switch_val {int dummy; } ;
struct switch_dev {TYPE_1__* ops; } ;
struct switch_attr {int dummy; } ;
struct TYPE_2__ {int (* reset_switch ) (struct switch_dev*) ;} ;


 int stub1 (struct switch_dev*) ;

__attribute__((used)) static int
swconfig_reset_switch(struct switch_dev *dev, const struct switch_attr *attr,
   struct switch_val *val)
{

 if (!dev->ops->reset_switch)
  return 0;

 return dev->ops->reset_switch(dev);
}
