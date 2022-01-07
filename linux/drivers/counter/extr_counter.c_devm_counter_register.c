
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct counter_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int counter_register (struct counter_device* const) ;
 int devm_counter_unreg ;
 int devres_add (struct device*,struct counter_device**) ;
 struct counter_device** devres_alloc (int ,int,int ) ;
 int devres_free (struct counter_device**) ;

int devm_counter_register(struct device *dev,
     struct counter_device *const counter)
{
 struct counter_device **ptr;
 int ret;

 ptr = devres_alloc(devm_counter_unreg, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return -ENOMEM;

 ret = counter_register(counter);
 if (!ret) {
  *ptr = counter;
  devres_add(dev, ptr);
 } else {
  devres_free(ptr);
 }

 return ret;
}
