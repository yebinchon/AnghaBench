
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfhd_device {int blocks; int bshift; } ;
struct hd_geometry {int cylinders; int heads; int sectors; } ;
struct block_device {TYPE_1__* bd_disk; } ;
struct TYPE_2__ {struct nfhd_device* private_data; } ;



__attribute__((used)) static int nfhd_getgeo(struct block_device *bdev, struct hd_geometry *geo)
{
 struct nfhd_device *dev = bdev->bd_disk->private_data;

 geo->cylinders = dev->blocks >> (6 - dev->bshift);
 geo->heads = 4;
 geo->sectors = 16;

 return 0;
}
