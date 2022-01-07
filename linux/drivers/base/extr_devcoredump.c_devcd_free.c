
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct devcd_entry {int del_wk; } ;


 struct devcd_entry* dev_to_devcd (struct device*) ;
 int flush_delayed_work (int *) ;

__attribute__((used)) static int devcd_free(struct device *dev, void *data)
{
 struct devcd_entry *devcd = dev_to_devcd(dev);

 flush_delayed_work(&devcd->del_wk);
 return 0;
}
