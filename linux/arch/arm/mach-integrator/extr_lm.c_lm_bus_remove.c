
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm_driver {int (* remove ) (struct lm_device*) ;} ;
struct lm_device {int dummy; } ;
struct device {int driver; } ;


 int stub1 (struct lm_device*) ;
 struct lm_device* to_lm_device (struct device*) ;
 struct lm_driver* to_lm_driver (int ) ;

__attribute__((used)) static int lm_bus_remove(struct device *dev)
{
 struct lm_device *lmdev = to_lm_device(dev);
 struct lm_driver *lmdrv = to_lm_driver(dev->driver);

 if (lmdrv->remove)
  lmdrv->remove(lmdev);
 return 0;
}
