
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nullb_device {struct blk_zone* zones; } ;
struct nullb_cmd {int error; TYPE_1__* nq; } ;
struct blk_zone {int cond; unsigned int wp; unsigned int start; unsigned int len; } ;
typedef unsigned int sector_t ;
typedef int blk_status_t ;
struct TYPE_2__ {struct nullb_device* dev; } ;


 int BLK_STS_IOERR ;
 int BLK_STS_OK ;




 unsigned int null_zone_no (struct nullb_device*,unsigned int) ;

__attribute__((used)) static blk_status_t null_zone_write(struct nullb_cmd *cmd, sector_t sector,
       unsigned int nr_sectors)
{
 struct nullb_device *dev = cmd->nq->dev;
 unsigned int zno = null_zone_no(dev, sector);
 struct blk_zone *zone = &dev->zones[zno];

 switch (zone->cond) {
 case 130:

  cmd->error = BLK_STS_IOERR;
  return BLK_STS_IOERR;
 case 131:
 case 129:

  if (sector != zone->wp)
   return BLK_STS_IOERR;

  if (zone->cond == 131)
   zone->cond = 129;

  zone->wp += nr_sectors;
  if (zone->wp == zone->start + zone->len)
   zone->cond = 130;
  break;
 case 128:
  break;
 default:

  return BLK_STS_IOERR;
 }
 return BLK_STS_OK;
}
