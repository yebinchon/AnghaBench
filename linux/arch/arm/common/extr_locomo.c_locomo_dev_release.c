
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct locomo_dev {int dummy; } ;
struct device {int dummy; } ;


 struct locomo_dev* LOCOMO_DEV (struct device*) ;
 int kfree (struct locomo_dev*) ;

__attribute__((used)) static void locomo_dev_release(struct device *_dev)
{
 struct locomo_dev *dev = LOCOMO_DEV(_dev);

 kfree(dev);
}
