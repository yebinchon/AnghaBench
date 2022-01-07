
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int treap ;
struct TYPE_6__ {scalar_t__ keys_cnt; int * subs; } ;
typedef TYPE_1__ queue ;
typedef int ll ;


 int IS_UID (int ) ;
 scalar_t__ dl_get_memory_used () ;
 int * dl_malloc (int) ;
 int get_news_s (int ) ;
 TYPE_1__* get_queue (int ,int) ;
 TYPE_1__* get_queue_by_alias (int ) ;
 int queues_memory ;
 int treap_init (int *) ;
 int update_news (TYPE_1__*) ;

queue *get_news_queue (ll id, int force) {

  queue *q;

  if (!IS_UID (id)) {
    q = get_queue_by_alias (id);
    if (q == ((void*)0)) {
      return ((void*)0);
    }
  } else {
    q = get_queue (get_news_s (id), force);
  }
  if (q != ((void*)0)) {

    if (q->keys_cnt == 0 && !force) {
      return ((void*)0);
    }
    if (q->subs == ((void*)0)) {

      queues_memory -= dl_get_memory_used();
      q->subs = dl_malloc (sizeof (treap));
      queues_memory += dl_get_memory_used();
      treap_init (q->subs);
    }

    if (force) {
      update_news (q);
    }
  }

  return q;
}
