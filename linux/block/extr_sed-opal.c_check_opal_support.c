
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_dev {int supported; int dev_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int opal_discovery0_step (struct opal_dev*) ;
 int setup_opal_dev (struct opal_dev*) ;

__attribute__((used)) static int check_opal_support(struct opal_dev *dev)
{
 int ret;

 mutex_lock(&dev->dev_lock);
 setup_opal_dev(dev);
 ret = opal_discovery0_step(dev);
 dev->supported = !ret;
 mutex_unlock(&dev->dev_lock);

 return ret;
}
