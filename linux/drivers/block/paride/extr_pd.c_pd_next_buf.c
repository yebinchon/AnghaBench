
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bio; } ;


 int __blk_mq_end_request (TYPE_1__*,int ) ;
 int * bio_data (int ) ;
 int blk_rq_cur_bytes (TYPE_1__*) ;
 scalar_t__ blk_rq_cur_sectors (TYPE_1__*) ;
 int blk_update_request (TYPE_1__*,int ,int ) ;
 int pd_block ;
 int * pd_buf ;
 scalar_t__ pd_count ;
 int pd_lock ;
 TYPE_1__* pd_req ;
 int pd_run ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pd_next_buf(void)
{
 unsigned long saved_flags;

 pd_count--;
 pd_run--;
 pd_buf += 512;
 pd_block++;
 if (!pd_run)
  return 1;
 if (pd_count)
  return 0;
 spin_lock_irqsave(&pd_lock, saved_flags);
 if (!blk_update_request(pd_req, 0, blk_rq_cur_bytes(pd_req))) {
  __blk_mq_end_request(pd_req, 0);
  pd_req = ((void*)0);
  pd_count = 0;
  pd_buf = ((void*)0);
 } else {
  pd_count = blk_rq_cur_sectors(pd_req);
  pd_buf = bio_data(pd_req->bio);
 }
 spin_unlock_irqrestore(&pd_lock, saved_flags);
 return !pd_count;
}
