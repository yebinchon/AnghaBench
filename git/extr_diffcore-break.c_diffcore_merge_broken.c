
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct diff_queue_struct {int nr; struct diff_filepair** queue; } ;
struct diff_filepair {TYPE_2__* two; TYPE_1__* one; scalar_t__ broken_pair; } ;
struct TYPE_4__ {int path; } ;
struct TYPE_3__ {int path; } ;


 int DIFF_QUEUE_CLEAR (struct diff_queue_struct*) ;
 int diff_q (struct diff_queue_struct*,struct diff_filepair*) ;
 struct diff_queue_struct diff_queued_diff ;
 int free (struct diff_filepair**) ;
 int merge_broken (struct diff_filepair*,struct diff_filepair*,struct diff_queue_struct*) ;
 int strcmp (int ,int ) ;

void diffcore_merge_broken(void)
{
 struct diff_queue_struct *q = &diff_queued_diff;
 struct diff_queue_struct outq;
 int i, j;

 DIFF_QUEUE_CLEAR(&outq);

 for (i = 0; i < q->nr; i++) {
  struct diff_filepair *p = q->queue[i];
  if (!p)

   continue;
  else if (p->broken_pair &&
    !strcmp(p->one->path, p->two->path)) {



   for (j = i + 1; j < q->nr; j++) {
    struct diff_filepair *pp = q->queue[j];
    if (pp->broken_pair &&
        !strcmp(pp->one->path, pp->two->path) &&
        !strcmp(p->one->path, pp->two->path)) {

     merge_broken(p, pp, &outq);
     q->queue[j] = ((void*)0);
     goto next;
    }
   }



   diff_q(&outq, p);
  }
  else
   diff_q(&outq, p);
next:;
 }
 free(q->queue);
 *q = outq;

 return;
}
