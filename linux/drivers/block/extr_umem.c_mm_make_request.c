
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {struct cardinfo* queuedata; } ;
struct cardinfo {int lock; struct bio** biotail; } ;
struct TYPE_2__ {int bi_size; scalar_t__ bi_sector; } ;
struct bio {int bi_opf; struct bio* bi_next; TYPE_1__ bi_iter; } ;
typedef int blk_qc_t ;


 int BLK_QC_T_NONE ;
 int activate (struct cardinfo*) ;
 int blk_queue_split (struct request_queue*,struct bio**) ;
 int mm_check_plugged (struct cardinfo*) ;
 scalar_t__ op_is_sync (int ) ;
 int pr_debug (char*,unsigned long long,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static blk_qc_t mm_make_request(struct request_queue *q, struct bio *bio)
{
 struct cardinfo *card = q->queuedata;
 pr_debug("mm_make_request %llu %u\n",
   (unsigned long long)bio->bi_iter.bi_sector,
   bio->bi_iter.bi_size);

 blk_queue_split(q, &bio);

 spin_lock_irq(&card->lock);
 *card->biotail = bio;
 bio->bi_next = ((void*)0);
 card->biotail = &bio->bi_next;
 if (op_is_sync(bio->bi_opf) || !mm_check_plugged(card))
  activate(card);
 spin_unlock_irq(&card->lock);

 return BLK_QC_T_NONE;
}
