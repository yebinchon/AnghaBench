
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ ref_cnt; int id; int * ev_first; } ;
typedef TYPE_1__ queue ;
struct TYPE_9__ {int data; } ;
typedef TYPE_2__ event ;


 TYPE_2__* event_malloc (int) ;
 int fprintf (int ,char*,...) ;
 int memcpy (int ,char*,int) ;
 int process_user_query_queue (TYPE_1__*) ;
 int queue_add (TYPE_1__*,TYPE_2__*) ;
 int redirect_news (int ,int,int,int,char*,int) ;
 int stderr ;
 int verbosity ;

int add_event (queue *q, char *data, int data_len, int x, int y, int ttl) {
  if (q == ((void*)0)) {
    if (verbosity > 2) {
      fprintf (stderr, "Queue not found.\n");
    }
    return 0;
  }




  if (q->ref_cnt != 0 || q->ev_first != ((void*)0)) {
    if (verbosity > 2) {
      fprintf (stderr, "  queue = %p\n", q);
    }
    event *e = event_malloc (data_len + 1);

    memcpy (e->data, data, data_len + 1);

    queue_add (q, e);

    process_user_query_queue (q);
  }

  if (ttl) {
    redirect_news (q->id, x, y, ttl, data, data_len);
  }


  return 1;
}
