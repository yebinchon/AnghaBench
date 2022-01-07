
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_queue_struct {int nr; int queue; } ;


 int QSORT (int ,int ,int ) ;
 struct diff_queue_struct diff_queued_diff ;
 int diffnamecmp ;

void diffcore_fix_diff_index(void)
{
 struct diff_queue_struct *q = &diff_queued_diff;
 QSORT(q->queue, q->nr, diffnamecmp);
}
