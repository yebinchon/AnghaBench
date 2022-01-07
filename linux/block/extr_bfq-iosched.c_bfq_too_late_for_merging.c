
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_queue {scalar_t__ service_from_backlogged; scalar_t__ first_IO_time; } ;


 scalar_t__ bfq_merge_time_limit ;
 scalar_t__ time_is_before_jiffies (scalar_t__) ;

__attribute__((used)) static bool bfq_too_late_for_merging(struct bfq_queue *bfqq)
{
 return bfqq->service_from_backlogged > 0 &&
  time_is_before_jiffies(bfqq->first_IO_time +
           bfq_merge_time_limit);
}
