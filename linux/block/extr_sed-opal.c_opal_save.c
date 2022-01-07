
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lr; } ;
struct TYPE_4__ {TYPE_1__ opal_key; } ;
struct opal_lock_unlock {TYPE_2__ session; } ;
struct opal_suspend_data {int lr; struct opal_lock_unlock unlk; } ;
struct opal_dev {int dev_lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int add_suspend_info (struct opal_dev*,struct opal_suspend_data*) ;
 struct opal_suspend_data* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int setup_opal_dev (struct opal_dev*) ;

__attribute__((used)) static int opal_save(struct opal_dev *dev, struct opal_lock_unlock *lk_unlk)
{
 struct opal_suspend_data *suspend;

 suspend = kzalloc(sizeof(*suspend), GFP_KERNEL);
 if (!suspend)
  return -ENOMEM;

 suspend->unlk = *lk_unlk;
 suspend->lr = lk_unlk->session.opal_key.lr;

 mutex_lock(&dev->dev_lock);
 setup_opal_dev(dev);
 add_suspend_info(dev, suspend);
 mutex_unlock(&dev->dev_lock);

 return 0;
}
