
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int treap ;
struct TYPE_4__ {int * subs; int * name; } ;
typedef TYPE_1__ queue ;


 int clear_subscr (TYPE_1__*) ;
 int dl_free (int *,int) ;
 scalar_t__ dl_get_memory_used () ;
 int queues_memory ;

void queue_clear_subs (queue *q) {
  if (q != ((void*)0) && q->name != ((void*)0) && q->subs != ((void*)0)) {
    clear_subscr (q);

    queues_memory -= dl_get_memory_used();
    dl_free (q->subs, sizeof (treap));
    queues_memory += dl_get_memory_used();
    q->subs = ((void*)0);
  }
}
