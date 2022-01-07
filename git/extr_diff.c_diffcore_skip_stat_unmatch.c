
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct diff_queue_struct {int nr; struct diff_filepair** queue; } ;
struct TYPE_2__ {int no_index; } ;
struct diff_options {int skip_stat_unmatch; TYPE_1__ flags; int repo; } ;
struct diff_filepair {int dummy; } ;


 int DIFF_QUEUE_CLEAR (struct diff_queue_struct*) ;
 scalar_t__ diff_filespec_check_stat_unmatch (int ,struct diff_filepair*) ;
 int diff_free_filepair (struct diff_filepair*) ;
 int diff_q (struct diff_queue_struct*,struct diff_filepair*) ;
 struct diff_queue_struct diff_queued_diff ;
 int free (struct diff_filepair**) ;

__attribute__((used)) static void diffcore_skip_stat_unmatch(struct diff_options *diffopt)
{
 int i;
 struct diff_queue_struct *q = &diff_queued_diff;
 struct diff_queue_struct outq;
 DIFF_QUEUE_CLEAR(&outq);

 for (i = 0; i < q->nr; i++) {
  struct diff_filepair *p = q->queue[i];

  if (diff_filespec_check_stat_unmatch(diffopt->repo, p))
   diff_q(&outq, p);
  else {





   if (!diffopt->flags.no_index)
    diffopt->skip_stat_unmatch++;
   diff_free_filepair(p);
  }
 }
 free(q->queue);
 *q = outq;
}
