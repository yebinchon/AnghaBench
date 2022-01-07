
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int x; int * next_time; TYPE_2__* parent; } ;
typedef TYPE_1__ wkey ;
struct TYPE_12__ {scalar_t__ size; } ;
struct TYPE_11__ {int id; struct TYPE_11__* next; TYPE_5__ keys; } ;
typedef TYPE_2__ watchcat ;


 int del_entry_time (TYPE_1__*) ;
 int fprintf (int ,char*,int ) ;
 int free_watchcat (TYPE_2__*) ;
 int free_watchcat_q (TYPE_2__*) ;
 int h_watchcat ;
 int h_watchcat_q ;
 int hset_llp_del (int *,int *) ;
 int my_verbosity ;
 int stderr ;
 int trp_del (TYPE_5__*,int ) ;
 TYPE_2__* watchcat_q_del (TYPE_2__*) ;

inline void del_wkey (wkey *k) {
  watchcat *w = k->parent;

  if (k->next_time != ((void*)0)) {
    del_entry_time (k);
  }

  trp_del (&w->keys, k->x);


  if (w->keys.size == 0) {
    watchcat *q = watchcat_q_del (w);

    if (q->next == q) {
      hset_llp_del (&h_watchcat_q, &q->id);
      free_watchcat_q (q);
    }

    if (my_verbosity > 1) {
      fprintf (stderr, "Del watchcat %lld\n", w->id);
    }

    hset_llp_del (&h_watchcat, &w->id);
    free_watchcat (w);
  }
}
