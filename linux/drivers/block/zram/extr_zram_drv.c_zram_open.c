
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zram {scalar_t__ claim; } ;
struct block_device {TYPE_1__* bd_disk; int bd_mutex; } ;
typedef int fmode_t ;
struct TYPE_2__ {struct zram* private_data; } ;


 int EBUSY ;
 int WARN_ON (int) ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static int zram_open(struct block_device *bdev, fmode_t mode)
{
 int ret = 0;
 struct zram *zram;

 WARN_ON(!mutex_is_locked(&bdev->bd_mutex));

 zram = bdev->bd_disk->private_data;

 if (zram->claim)
  ret = -EBUSY;

 return ret;
}
