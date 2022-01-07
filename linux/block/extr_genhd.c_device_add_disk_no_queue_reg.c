
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int dummy; } ;
struct device {int dummy; } ;


 int __device_add_disk (struct device*,struct gendisk*,int *,int) ;

void device_add_disk_no_queue_reg(struct device *parent, struct gendisk *disk)
{
 __device_add_disk(parent, disk, ((void*)0), 0);
}
