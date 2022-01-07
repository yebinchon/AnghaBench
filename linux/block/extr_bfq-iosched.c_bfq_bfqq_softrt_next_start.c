
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfq_queue {int service_from_backlogged; TYPE_1__* bfqd; scalar_t__ last_idle_bklogged; int soft_rt_next_start; } ;
struct bfq_data {int bfq_wr_max_softrt_rate; } ;
struct TYPE_2__ {int bfq_slice_idle; } ;


 int HZ ;
 scalar_t__ jiffies ;
 unsigned long max3 (int ,scalar_t__,scalar_t__) ;
 scalar_t__ nsecs_to_jiffies (int ) ;

__attribute__((used)) static unsigned long bfq_bfqq_softrt_next_start(struct bfq_data *bfqd,
      struct bfq_queue *bfqq)
{
 return max3(bfqq->soft_rt_next_start,
      bfqq->last_idle_bklogged +
      HZ * bfqq->service_from_backlogged /
      bfqd->bfq_wr_max_softrt_rate,
      jiffies + nsecs_to_jiffies(bfqq->bfqd->bfq_slice_idle) + 4);
}
