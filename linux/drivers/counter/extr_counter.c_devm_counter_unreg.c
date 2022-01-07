
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct counter_device {int dummy; } ;


 int counter_unregister (struct counter_device*) ;

__attribute__((used)) static void devm_counter_unreg(struct device *dev, void *res)
{
 counter_unregister(*(struct counter_device **)res);
}
