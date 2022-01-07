
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_queue_struct {int nr; int * queue; } ;


 struct diff_queue_struct diff_queued_diff ;
 int diff_unmodified_pair (int ) ;

int diff_queue_is_empty(void)
{
 struct diff_queue_struct *q = &diff_queued_diff;
 int i;
 for (i = 0; i < q->nr; i++)
  if (!diff_unmodified_pair(q->queue[i]))
   return 0;
 return 1;
}
