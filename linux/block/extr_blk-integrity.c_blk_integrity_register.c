
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gendisk {TYPE_2__* queue; } ;
struct blk_integrity {int flags; int tag_size; int tuple_size; int * profile; scalar_t__ interval_exp; } ;
struct TYPE_4__ {TYPE_1__* backing_dev_info; struct blk_integrity integrity; } ;
struct TYPE_3__ {int capabilities; } ;


 int BDI_CAP_STABLE_WRITES ;
 int BLK_INTEGRITY_GENERATE ;
 int BLK_INTEGRITY_VERIFY ;
 scalar_t__ ilog2 (int ) ;
 int nop_profile ;
 int queue_logical_block_size (TYPE_2__*) ;

void blk_integrity_register(struct gendisk *disk, struct blk_integrity *template)
{
 struct blk_integrity *bi = &disk->queue->integrity;

 bi->flags = BLK_INTEGRITY_VERIFY | BLK_INTEGRITY_GENERATE |
  template->flags;
 bi->interval_exp = template->interval_exp ? :
  ilog2(queue_logical_block_size(disk->queue));
 bi->profile = template->profile ? template->profile : &nop_profile;
 bi->tuple_size = template->tuple_size;
 bi->tag_size = template->tag_size;

 disk->queue->backing_dev_info->capabilities |= BDI_CAP_STABLE_WRITES;
}
