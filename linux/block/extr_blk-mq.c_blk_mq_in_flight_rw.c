
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct mq_inflight {unsigned int* inflight; struct hd_struct* part; } ;
struct hd_struct {int dummy; } ;


 int blk_mq_check_inflight_rw ;
 int blk_mq_queue_tag_busy_iter (struct request_queue*,int ,struct mq_inflight*) ;

void blk_mq_in_flight_rw(struct request_queue *q, struct hd_struct *part,
    unsigned int inflight[2])
{
 struct mq_inflight mi = { .part = part, .inflight = inflight, };

 inflight[0] = inflight[1] = 0;
 blk_mq_queue_tag_busy_iter(q, blk_mq_check_inflight_rw, &mi);
}
