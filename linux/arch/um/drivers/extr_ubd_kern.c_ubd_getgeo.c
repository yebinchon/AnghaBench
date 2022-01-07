
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubd {int size; } ;
struct hd_geometry {int heads; int sectors; int cylinders; } ;
struct block_device {TYPE_1__* bd_disk; } ;
struct TYPE_2__ {struct ubd* private_data; } ;



__attribute__((used)) static int ubd_getgeo(struct block_device *bdev, struct hd_geometry *geo)
{
 struct ubd *ubd_dev = bdev->bd_disk->private_data;

 geo->heads = 128;
 geo->sectors = 32;
 geo->cylinders = ubd_dev->size / (128 * 32 * 512);
 return 0;
}
