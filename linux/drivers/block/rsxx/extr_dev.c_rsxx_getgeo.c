
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct rsxx_cardinfo {int size8; } ;
struct hd_geometry {int heads; int sectors; int cylinders; } ;
struct block_device {TYPE_1__* bd_disk; } ;
struct TYPE_2__ {struct rsxx_cardinfo* private_data; } ;


 int do_div (int,int) ;

__attribute__((used)) static int rsxx_getgeo(struct block_device *bdev, struct hd_geometry *geo)
{
 struct rsxx_cardinfo *card = bdev->bd_disk->private_data;
 u64 blocks = card->size8 >> 9;





 if (card->size8) {
  geo->heads = 64;
  geo->sectors = 16;
  do_div(blocks, (geo->heads * geo->sectors));
  geo->cylinders = blocks;
 } else {
  geo->heads = 0;
  geo->sectors = 0;
  geo->cylinders = 0;
 }
 return 0;
}
