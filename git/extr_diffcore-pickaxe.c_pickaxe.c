
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_queue_struct {int nr; struct diff_filepair** queue; } ;
struct diff_options {int pickaxe_opts; } ;
struct diff_filepair {int dummy; } ;
typedef int regex_t ;
typedef int pickaxe_fn ;
typedef int kwset_t ;


 int DIFF_PICKAXE_ALL ;
 int DIFF_QUEUE_CLEAR (struct diff_queue_struct*) ;
 int diff_free_filepair (struct diff_filepair*) ;
 int diff_q (struct diff_queue_struct*,struct diff_filepair*) ;
 int free (struct diff_filepair**) ;
 scalar_t__ pickaxe_match (struct diff_filepair*,struct diff_options*,int *,int ,int ) ;

__attribute__((used)) static void pickaxe(struct diff_queue_struct *q, struct diff_options *o,
      regex_t *regexp, kwset_t kws, pickaxe_fn fn)
{
 int i;
 struct diff_queue_struct outq;

 DIFF_QUEUE_CLEAR(&outq);

 if (o->pickaxe_opts & DIFF_PICKAXE_ALL) {

  for (i = 0; i < q->nr; i++) {
   struct diff_filepair *p = q->queue[i];
   if (pickaxe_match(p, o, regexp, kws, fn))
    return;
  }






  for (i = 0; i < q->nr; i++)
   diff_free_filepair(q->queue[i]);
 } else {

  for (i = 0; i < q->nr; i++) {
   struct diff_filepair *p = q->queue[i];
   if (pickaxe_match(p, o, regexp, kws, fn))
    diff_q(&outq, p);
   else
    diff_free_filepair(p);
  }
 }

 free(q->queue);
 *q = outq;
}
