
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct floppy_state {size_t index; int state; } ;
struct TYPE_2__ {struct request_queue* queue; } ;


 int blk_mq_freeze_queue (struct request_queue*) ;
 int blk_mq_quiesce_queue (struct request_queue*) ;
 int blk_mq_unfreeze_queue (struct request_queue*) ;
 int blk_mq_unquiesce_queue (struct request_queue*) ;
 TYPE_1__** disks ;
 int idle ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int swim3_dbg (char*,char*) ;
 int swim3_lock ;

__attribute__((used)) static void release_drive(struct floppy_state *fs)
{
 struct request_queue *q = disks[fs->index]->queue;
 unsigned long flags;

 swim3_dbg("%s", "-> release drive\n");

 spin_lock_irqsave(&swim3_lock, flags);
 fs->state = idle;
 spin_unlock_irqrestore(&swim3_lock, flags);

 blk_mq_freeze_queue(q);
 blk_mq_quiesce_queue(q);
 blk_mq_unquiesce_queue(q);
 blk_mq_unfreeze_queue(q);
}
