
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct bfq_data {int bfq_timeout; scalar_t__ peak_rate; } ;


 unsigned long BFQ_RATE_SHIFT ;
 unsigned long USEC_PER_MSEC ;
 unsigned long jiffies_to_msecs (int ) ;

__attribute__((used)) static unsigned long bfq_calc_max_budget(struct bfq_data *bfqd)
{
 return (u64)bfqd->peak_rate * USEC_PER_MSEC *
  jiffies_to_msecs(bfqd->bfq_timeout)>>BFQ_RATE_SHIFT;
}
