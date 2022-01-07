
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nullb_device {size_t nr_zones; struct blk_zone* zones; } ;
struct nullb_cmd {int rq; TYPE_1__* nq; } ;
struct blk_zone {int start; int wp; void* cond; int type; } ;
typedef int sector_t ;
typedef int blk_status_t ;
struct TYPE_2__ {struct nullb_device* dev; } ;


 int BLK_STS_IOERR ;
 int BLK_STS_NOTSUPP ;
 int BLK_STS_OK ;
 void* BLK_ZONE_COND_EMPTY ;
 int BLK_ZONE_TYPE_CONVENTIONAL ;


 unsigned int null_zone_no (struct nullb_device*,int ) ;
 int req_op (int ) ;

__attribute__((used)) static blk_status_t null_zone_reset(struct nullb_cmd *cmd, sector_t sector)
{
 struct nullb_device *dev = cmd->nq->dev;
 unsigned int zno = null_zone_no(dev, sector);
 struct blk_zone *zone = &dev->zones[zno];
 size_t i;

 switch (req_op(cmd->rq)) {
 case 128:
  for (i = 0; i < dev->nr_zones; i++) {
   if (zone[i].type == BLK_ZONE_TYPE_CONVENTIONAL)
    continue;
   zone[i].cond = BLK_ZONE_COND_EMPTY;
   zone[i].wp = zone[i].start;
  }
  break;
 case 129:
  if (zone->type == BLK_ZONE_TYPE_CONVENTIONAL)
   return BLK_STS_IOERR;

  zone->cond = BLK_ZONE_COND_EMPTY;
  zone->wp = zone->start;
  break;
 default:
  return BLK_STS_NOTSUPP;
 }
 return BLK_STS_OK;
}
