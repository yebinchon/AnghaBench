
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nullb_device {int dummy; } ;
struct config_item {int dummy; } ;


 int null_free_dev (struct nullb_device*) ;
 int null_free_device_storage (struct nullb_device*,int) ;
 struct nullb_device* to_nullb_device (struct config_item*) ;

__attribute__((used)) static void nullb_device_release(struct config_item *item)
{
 struct nullb_device *dev = to_nullb_device(item);

 null_free_device_storage(dev, 0);
 null_free_dev(dev);
}
