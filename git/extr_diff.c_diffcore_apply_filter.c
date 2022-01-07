
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_queue_struct {int nr; struct diff_filepair** queue; } ;
struct diff_options {int filter; } ;
struct diff_filepair {int dummy; } ;


 int DIFF_QUEUE_CLEAR (struct diff_queue_struct*) ;
 int DIFF_STATUS_FILTER_AON ;
 int diff_free_filepair (struct diff_filepair*) ;
 int diff_q (struct diff_queue_struct*,struct diff_filepair*) ;
 struct diff_queue_struct diff_queued_diff ;
 scalar_t__ filter_bit_tst (int ,struct diff_options*) ;
 int free (struct diff_filepair**) ;
 scalar_t__ match_filter (struct diff_options*,struct diff_filepair*) ;

__attribute__((used)) static void diffcore_apply_filter(struct diff_options *options)
{
 int i;
 struct diff_queue_struct *q = &diff_queued_diff;
 struct diff_queue_struct outq;

 DIFF_QUEUE_CLEAR(&outq);

 if (!options->filter)
  return;

 if (filter_bit_tst(DIFF_STATUS_FILTER_AON, options)) {
  int found;
  for (i = found = 0; !found && i < q->nr; i++) {
   if (match_filter(options, q->queue[i]))
    found++;
  }
  if (found)
   return;






  for (i = 0; i < q->nr; i++)
   diff_free_filepair(q->queue[i]);
 }
 else {

  for (i = 0; i < q->nr; i++) {
   struct diff_filepair *p = q->queue[i];
   if (match_filter(options, p))
    diff_q(&outq, p);
   else
    diff_free_filepair(p);
  }
 }
 free(q->queue);
 *q = outq;
}
