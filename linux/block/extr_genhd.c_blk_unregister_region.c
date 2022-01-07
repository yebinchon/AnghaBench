
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_t ;


 int bdev_map ;
 int kobj_unmap (int ,int ,unsigned long) ;

void blk_unregister_region(dev_t devt, unsigned long range)
{
 kobj_unmap(bdev_map, devt, range);
}
