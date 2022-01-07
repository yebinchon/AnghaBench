
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hd_geometry {int heads; int sectors; int cylinders; } ;
struct cardinfo {int mm_size; } ;
struct block_device {TYPE_1__* bd_disk; } ;
struct TYPE_2__ {struct cardinfo* private_data; } ;


 int MM_HARDSECT ;

__attribute__((used)) static int mm_getgeo(struct block_device *bdev, struct hd_geometry *geo)
{
 struct cardinfo *card = bdev->bd_disk->private_data;
 int size = card->mm_size * (1024 / MM_HARDSECT);






 geo->heads = 64;
 geo->sectors = 32;
 geo->cylinders = size / (geo->heads * geo->sectors);
 return 0;
}
