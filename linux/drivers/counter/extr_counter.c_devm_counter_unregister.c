
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct counter_device {int dummy; } ;


 int WARN_ON (int) ;
 int devm_counter_match ;
 int devm_counter_unreg ;
 int devres_release (struct device*,int ,int ,struct counter_device* const) ;

void devm_counter_unregister(struct device *dev,
        struct counter_device *const counter)
{
 int rc;

 rc = devres_release(dev, devm_counter_unreg, devm_counter_match,
       counter);
 WARN_ON(rc);
}
