
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int dummy; } ;
struct device {int dummy; } ;
struct attribute_group {int dummy; } ;


 int __device_add_disk (struct device*,struct gendisk*,struct attribute_group const**,int) ;

void device_add_disk(struct device *parent, struct gendisk *disk,
       const struct attribute_group **groups)

{
 __device_add_disk(parent, disk, groups, 1);
}
