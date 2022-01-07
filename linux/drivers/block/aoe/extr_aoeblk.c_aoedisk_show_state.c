
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {struct aoedev* private_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aoedev {int flags; scalar_t__ nopen; } ;
typedef int ssize_t ;


 int DEVFL_KICKME ;
 int DEVFL_UP ;
 int PAGE_SIZE ;
 struct gendisk* dev_to_disk (struct device*) ;
 int snprintf (char*,int ,char*,char*,char*) ;

__attribute__((used)) static ssize_t aoedisk_show_state(struct device *dev,
      struct device_attribute *attr, char *page)
{
 struct gendisk *disk = dev_to_disk(dev);
 struct aoedev *d = disk->private_data;

 return snprintf(page, PAGE_SIZE,
   "%s%s\n",
   (d->flags & DEVFL_UP) ? "up" : "down",
   (d->flags & DEVFL_KICKME) ? ",kickme" :
   (d->nopen && !(d->flags & DEVFL_UP)) ? ",closewait" : "");

}
