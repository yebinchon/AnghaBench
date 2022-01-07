
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nullb_device {int badblocks; } ;


 int badblocks_exit (int *) ;
 int kfree (struct nullb_device*) ;
 int null_zone_exit (struct nullb_device*) ;

__attribute__((used)) static void null_free_dev(struct nullb_device *dev)
{
 if (!dev)
  return;

 null_zone_exit(dev);
 badblocks_exit(&dev->badblocks);
 kfree(dev);
}
