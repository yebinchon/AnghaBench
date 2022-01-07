
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct devcd_entry {void const* failing_dev; } ;


 struct devcd_entry* dev_to_devcd (struct device*) ;

__attribute__((used)) static int devcd_match_failing(struct device *dev, const void *failing)
{
 struct devcd_entry *devcd = dev_to_devcd(dev);

 return devcd->failing_dev == failing;
}
