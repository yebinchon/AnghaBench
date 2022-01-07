
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct find_data {int mask; int id; scalar_t__ parent; struct amba_device* dev; scalar_t__ busid; } ;
struct device {scalar_t__ parent; } ;
struct amba_device {int periphid; } ;


 int dev_name (struct device*) ;
 int get_device (struct device*) ;
 scalar_t__ strcmp (int ,scalar_t__) ;
 struct amba_device* to_amba_device (struct device*) ;

__attribute__((used)) static int amba_find_match(struct device *dev, void *data)
{
 struct find_data *d = data;
 struct amba_device *pcdev = to_amba_device(dev);
 int r;

 r = (pcdev->periphid & d->mask) == d->id;
 if (d->parent)
  r &= d->parent == dev->parent;
 if (d->busid)
  r &= strcmp(dev_name(dev), d->busid) == 0;

 if (r) {
  get_device(dev);
  d->dev = pcdev;
 }

 return r;
}
