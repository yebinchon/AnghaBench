
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_flags; } ;


 int QUEUE_FLAG_FUA ;
 int QUEUE_FLAG_WC ;
 int blk_queue_flag_clear (int ,struct request_queue*) ;
 int blk_queue_flag_set (int ,struct request_queue*) ;
 int test_bit (int ,int *) ;
 int wbt_set_write_cache (struct request_queue*,int ) ;

void blk_queue_write_cache(struct request_queue *q, bool wc, bool fua)
{
 if (wc)
  blk_queue_flag_set(QUEUE_FLAG_WC, q);
 else
  blk_queue_flag_clear(QUEUE_FLAG_WC, q);
 if (fua)
  blk_queue_flag_set(QUEUE_FLAG_FUA, q);
 else
  blk_queue_flag_clear(QUEUE_FLAG_FUA, q);

 wbt_set_write_cache(q, test_bit(QUEUE_FLAG_WC, &q->queue_flags));
}
