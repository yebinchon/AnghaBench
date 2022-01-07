
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct skd_device {int disk; scalar_t__ read_cap_is_valid; TYPE_2__* pdev; } ;
struct hd_geometry {int heads; int sectors; int cylinders; } ;
struct block_device {TYPE_1__* bd_disk; } ;
struct TYPE_6__ {int comm; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int disk_name; struct skd_device* private_data; } ;


 int EIO ;
 TYPE_3__* current ;
 int dev_dbg (int *,char*,int ,int ) ;
 int get_capacity (int ) ;

__attribute__((used)) static int skd_bdev_getgeo(struct block_device *bdev, struct hd_geometry *geo)
{
 struct skd_device *skdev;
 u64 capacity;

 skdev = bdev->bd_disk->private_data;

 dev_dbg(&skdev->pdev->dev, "%s: CMD[%s] getgeo device\n",
  bdev->bd_disk->disk_name, current->comm);

 if (skdev->read_cap_is_valid) {
  capacity = get_capacity(skdev->disk);
  geo->heads = 64;
  geo->sectors = 255;
  geo->cylinders = (capacity) / (255 * 64);

  return 0;
 }
 return -EIO;
}
