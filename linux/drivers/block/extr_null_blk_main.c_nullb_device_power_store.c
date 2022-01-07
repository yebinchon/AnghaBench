
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nullb_device {int power; int flags; int nullb; } ;
struct config_item {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ ENOMEM ;
 int NULLB_DEV_FL_CONFIGURED ;
 int NULLB_DEV_FL_UP ;
 int clear_bit (int ,int *) ;
 int lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ null_add_dev (struct nullb_device*) ;
 int null_del_dev (int ) ;
 scalar_t__ nullb_device_bool_attr_store (int*,char const*,size_t) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 struct nullb_device* to_nullb_device (struct config_item*) ;

__attribute__((used)) static ssize_t nullb_device_power_store(struct config_item *item,
         const char *page, size_t count)
{
 struct nullb_device *dev = to_nullb_device(item);
 bool newp = 0;
 ssize_t ret;

 ret = nullb_device_bool_attr_store(&newp, page, count);
 if (ret < 0)
  return ret;

 if (!dev->power && newp) {
  if (test_and_set_bit(NULLB_DEV_FL_UP, &dev->flags))
   return count;
  if (null_add_dev(dev)) {
   clear_bit(NULLB_DEV_FL_UP, &dev->flags);
   return -ENOMEM;
  }

  set_bit(NULLB_DEV_FL_CONFIGURED, &dev->flags);
  dev->power = newp;
 } else if (dev->power && !newp) {
  if (test_and_clear_bit(NULLB_DEV_FL_UP, &dev->flags)) {
   mutex_lock(&lock);
   dev->power = newp;
   null_del_dev(dev->nullb);
   mutex_unlock(&lock);
  }
  clear_bit(NULLB_DEV_FL_CONFIGURED, &dev->flags);
 }

 return count;
}
