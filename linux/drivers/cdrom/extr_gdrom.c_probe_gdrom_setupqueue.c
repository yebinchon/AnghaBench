
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int gdrom_rq; TYPE_1__* disk; } ;
struct TYPE_3__ {int queue; } ;


 int GDROM_HARD_SECTOR ;
 int blk_queue_logical_block_size (int ,int ) ;
 int blk_queue_max_segment_size (int ,int) ;
 int blk_queue_max_segments (int ,int) ;
 TYPE_2__ gd ;
 int gdrom_init_dma_mode () ;

__attribute__((used)) static int probe_gdrom_setupqueue(void)
{
 blk_queue_logical_block_size(gd.gdrom_rq, GDROM_HARD_SECTOR);

 blk_queue_max_segments(gd.gdrom_rq, 1);

 blk_queue_max_segment_size(gd.gdrom_rq, 0x40000);
 gd.disk->queue = gd.gdrom_rq;
 return gdrom_init_dma_mode();
}
