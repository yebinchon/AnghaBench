
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ref_cnt; scalar_t__ keys_cnt; scalar_t__ subscr_cnt; int * ev_last; TYPE_2__* ev_first; } ;
typedef TYPE_1__ queue ;
struct TYPE_8__ {scalar_t__ ref_cnt; struct TYPE_8__* next; } ;
typedef TYPE_2__ event ;


 int delete_queue (TYPE_1__*) ;
 int event_free (TYPE_2__*) ;
 int fprintf (int ,char*,...) ;
 int my_verbosity ;
 int queue_clear_subs (TYPE_1__*) ;
 int stderr ;

void queue_fix (queue *q) {
  if (my_verbosity > 1) {
    fprintf (stderr, "in queue fix %p %d\n", q, q->ref_cnt);
  }
  if (q->ref_cnt == 0) {
    event *e = q->ev_first;
    while (e != ((void*)0) && e->ref_cnt == 0) {
      q->ev_first = e->next;

      event_free (e);

      e = q->ev_first;
    }
    if (e == ((void*)0)) {
      q->ev_last = ((void*)0);
    }
  }


  if ( q->keys_cnt == 0) {
    queue_clear_subs (q);
  }

  if ( q->keys_cnt == 0 && q->subscr_cnt == 0) {
    delete_queue (q);
  }
  if (my_verbosity > 1) {
    fprintf (stderr, "exit queue fix\n");
  }
}
