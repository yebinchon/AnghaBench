
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obj_order {int obj; } ;
struct diff_queue_struct {int nr; int * queue; } ;


 int ALLOC_ARRAY (struct obj_order*,int) ;
 struct diff_queue_struct diff_queued_diff ;
 int free (struct obj_order*) ;
 int order_objects (char const*,int ,struct obj_order*,int) ;
 int pair_pathtwo ;

void diffcore_order(const char *orderfile)
{
 struct diff_queue_struct *q = &diff_queued_diff;
 struct obj_order *o;
 int i;

 if (!q->nr)
  return;

 ALLOC_ARRAY(o, q->nr);
 for (i = 0; i < q->nr; i++)
  o[i].obj = q->queue[i];
 order_objects(orderfile, pair_pathtwo, o, q->nr);
 for (i = 0; i < q->nr; i++)
  q->queue[i] = o[i].obj;
 free(o);
 return;
}
