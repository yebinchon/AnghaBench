
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;


 int sector_div (int,int) ;

int ata_std_bios_param(struct scsi_device *sdev, struct block_device *bdev,
         sector_t capacity, int geom[])
{
 geom[0] = 255;
 geom[1] = 63;
 sector_div(capacity, 255*63);
 geom[2] = capacity;

 return 0;
}
