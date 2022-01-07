
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gendisk {TYPE_2__* queue; } ;
struct blk_integrity {int dummy; } ;
struct TYPE_4__ {int integrity; TYPE_1__* backing_dev_info; } ;
struct TYPE_3__ {int capabilities; } ;


 int BDI_CAP_STABLE_WRITES ;
 int memset (int *,int ,int) ;

void blk_integrity_unregister(struct gendisk *disk)
{
 disk->queue->backing_dev_info->capabilities &= ~BDI_CAP_STABLE_WRITES;
 memset(&disk->queue->integrity, 0, sizeof(struct blk_integrity));
}
