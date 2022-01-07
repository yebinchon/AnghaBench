
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct bfq_queue {int seek_history; int wr_coeff; scalar_t__ wr_cur_max_time; int last_request_pos; } ;
struct bfq_data {scalar_t__ bfq_wr_rt_max_time; } ;


 scalar_t__ BFQQ_TOTALLY_SEEKY (struct bfq_queue*) ;
 int BFQ_RQ_SEEKY (struct bfq_data*,int ,struct request*) ;
 int bfq_bfqq_end_wr (struct bfq_queue*) ;

__attribute__((used)) static void
bfq_update_io_seektime(struct bfq_data *bfqd, struct bfq_queue *bfqq,
         struct request *rq)
{
 bfqq->seek_history <<= 1;
 bfqq->seek_history |= BFQ_RQ_SEEKY(bfqd, bfqq->last_request_pos, rq);

 if (bfqq->wr_coeff > 1 &&
     bfqq->wr_cur_max_time == bfqd->bfq_wr_rt_max_time &&
     BFQQ_TOTALLY_SEEKY(bfqq))
  bfq_bfqq_end_wr(bfqq);
}
