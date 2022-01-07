
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_queue {int sort_list; } ;


 scalar_t__ RB_EMPTY_ROOT (int *) ;
 scalar_t__ bfq_better_to_idle (struct bfq_queue*) ;

__attribute__((used)) static bool bfq_bfqq_must_idle(struct bfq_queue *bfqq)
{
 return RB_EMPTY_ROOT(&bfqq->sort_list) && bfq_better_to_idle(bfqq);
}
