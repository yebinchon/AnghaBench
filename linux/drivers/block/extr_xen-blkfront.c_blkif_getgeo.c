
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_geometry {int heads; int sectors; int cylinders; } ;
struct block_device {int bd_disk; } ;
typedef int sector_t ;


 int get_capacity (int ) ;
 int sector_div (int,int) ;

__attribute__((used)) static int blkif_getgeo(struct block_device *bd, struct hd_geometry *hg)
{


 sector_t nsect = get_capacity(bd->bd_disk);
 sector_t cylinders = nsect;

 hg->heads = 0xff;
 hg->sectors = 0x3f;
 sector_div(cylinders, hg->heads * hg->sectors);
 hg->cylinders = cylinders;
 if ((sector_t)(hg->cylinders + 1) * hg->heads * hg->sectors < nsect)
  hg->cylinders = 0xffff;
 return 0;
}
