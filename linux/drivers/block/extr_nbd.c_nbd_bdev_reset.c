
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int bd_openers; } ;


 int bd_set_size (struct block_device*,int ) ;

__attribute__((used)) static void nbd_bdev_reset(struct block_device *bdev)
{
 if (bdev->bd_openers > 1)
  return;
 bd_set_size(bdev, 0);
}
