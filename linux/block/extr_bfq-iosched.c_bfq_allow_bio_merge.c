
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {TYPE_1__* elevator; } ;
struct request {int dummy; } ;
struct bio {int bi_opf; } ;
struct bfq_queue {int dummy; } ;
struct bfq_data {struct bfq_queue* bio_bfqq; int bio_bic; } ;
struct TYPE_2__ {struct bfq_data* elevator_data; } ;


 struct bfq_queue* RQ_BFQQ (struct request*) ;
 int bfq_merge_bfqqs (struct bfq_data*,int ,struct bfq_queue*,struct bfq_queue*) ;
 struct bfq_queue* bfq_setup_cooperator (struct bfq_data*,struct bfq_queue*,struct bio*,int) ;
 int op_is_sync (int ) ;
 int rq_is_sync (struct request*) ;

__attribute__((used)) static bool bfq_allow_bio_merge(struct request_queue *q, struct request *rq,
    struct bio *bio)
{
 struct bfq_data *bfqd = q->elevator->elevator_data;
 bool is_sync = op_is_sync(bio->bi_opf);
 struct bfq_queue *bfqq = bfqd->bio_bfqq, *new_bfqq;




 if (is_sync && !rq_is_sync(rq))
  return 0;





 if (!bfqq)
  return 0;





 new_bfqq = bfq_setup_cooperator(bfqd, bfqq, bio, 0);
 if (new_bfqq) {







  bfq_merge_bfqqs(bfqd, bfqd->bio_bic, bfqq,
    new_bfqq);





  bfqq = new_bfqq;







  bfqd->bio_bfqq = bfqq;
 }

 return bfqq == RQ_BFQQ(rq);
}
