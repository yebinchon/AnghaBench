
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct bfq_data {int peak_rate_samples; int tot_sectors_dispatched; scalar_t__ sequential_samples; int last_rq_max_size; int first_dispatch; int last_dispatch; } ;


 int bfq_log (struct bfq_data*,char*,int,scalar_t__,int ) ;
 int blk_rq_sectors (struct request*) ;
 int ktime_get_ns () ;

__attribute__((used)) static void bfq_reset_rate_computation(struct bfq_data *bfqd,
           struct request *rq)
{
 if (rq != ((void*)0)) {
  bfqd->last_dispatch = bfqd->first_dispatch = ktime_get_ns();
  bfqd->peak_rate_samples = 1;
  bfqd->sequential_samples = 0;
  bfqd->tot_sectors_dispatched = bfqd->last_rq_max_size =
   blk_rq_sectors(rq);
 } else
  bfqd->peak_rate_samples = 0;

 bfq_log(bfqd,
  "reset_rate_computation at end, sample %u/%u tot_sects %llu",
  bfqd->peak_rate_samples, bfqd->sequential_samples,
  bfqd->tot_sectors_dispatched);
}
