
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct line_log_data {int path; struct line_log_data* next; } ;
struct diff_queue_struct {int nr; struct diff_filepair** queue; } ;
struct diff_filepair {TYPE_1__* two; } ;
struct TYPE_2__ {int path; } ;


 int DIFF_FILE_VALID (TYPE_1__*) ;
 int DIFF_QUEUE_CLEAR (struct diff_queue_struct*) ;
 int diff_free_filepair (struct diff_filepair*) ;
 int diff_q (struct diff_queue_struct*,struct diff_filepair*) ;
 struct diff_queue_struct diff_queued_diff ;
 int free (struct diff_filepair**) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static void filter_diffs_for_paths(struct line_log_data *range, int keep_deletions)
{
 int i;
 struct diff_queue_struct outq;
 DIFF_QUEUE_CLEAR(&outq);

 for (i = 0; i < diff_queued_diff.nr; i++) {
  struct diff_filepair *p = diff_queued_diff.queue[i];
  struct line_log_data *rg = ((void*)0);

  if (!DIFF_FILE_VALID(p->two)) {
   if (keep_deletions)
    diff_q(&outq, p);
   else
    diff_free_filepair(p);
   continue;
  }
  for (rg = range; rg; rg = rg->next) {
   if (!strcmp(rg->path, p->two->path))
    break;
  }
  if (rg)
   diff_q(&outq, p);
  else
   diff_free_filepair(p);
 }
 free(diff_queued_diff.queue);
 diff_queued_diff = outq;
}
