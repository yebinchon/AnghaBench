
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nullb_device {int power; int nullb; int flags; } ;
struct config_item {int dummy; } ;
struct config_group {int dummy; } ;


 int NULLB_DEV_FL_UP ;
 int config_item_put (struct config_item*) ;
 int lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int null_del_dev (int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 struct nullb_device* to_nullb_device (struct config_item*) ;

__attribute__((used)) static void
nullb_group_drop_item(struct config_group *group, struct config_item *item)
{
 struct nullb_device *dev = to_nullb_device(item);

 if (test_and_clear_bit(NULLB_DEV_FL_UP, &dev->flags)) {
  mutex_lock(&lock);
  dev->power = 0;
  null_del_dev(dev->nullb);
  mutex_unlock(&lock);
 }

 config_item_put(item);
}
