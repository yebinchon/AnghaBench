
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int phrases_cnt; TYPE_2__* phrases; } ;
typedef TYPE_1__ watchcat_query_t ;
struct TYPE_12__ {int words; int * H; scalar_t__ minus_flag; } ;
typedef TYPE_2__ watchcat_query_phrase_t ;
struct TYPE_13__ {long long id; scalar_t__ vn; int keys; TYPE_1__* query; } ;
typedef TYPE_3__ watchcat ;


 TYPE_3__* alloc_watchcat () ;
 int assert (int ) ;
 int fprintf (int ,char*,long long) ;
 int free_watchcat_query (TYPE_1__*) ;
 TYPE_3__* get_watchcat_q (int ,int) ;
 int h_watchcat ;
 scalar_t__ hset_llp_add (int *,long long*) ;
 int my_verbosity ;
 int stderr ;
 int watchcat_q_add (TYPE_3__*,TYPE_3__*) ;
 int wkey_set_init (int *) ;

inline watchcat *get_watchcat (long long id, watchcat_query_t *query) {
  watchcat **b;
  b = (watchcat **)hset_llp_add (&h_watchcat, &id);
  if (*b == (watchcat *)&id) {
    watchcat *w = alloc_watchcat();
    w->id = id;
    w->query = query;

    wkey_set_init (&w->keys);

    if (my_verbosity > 1) {
      fprintf (stderr, "watchcat_created id = %lld\n", id);
    }

    int i;
    watchcat *bq = ((void*)0);

    int done = 0;
    for (i = 0; i < query->phrases_cnt && !done; i++) {
      watchcat_query_phrase_t *phrase = &query->phrases[i];
      if (phrase->minus_flag) {
        continue;
      }
      int j;
      for (j = 0; j < phrase->words && !done; j++) {
        watchcat *q = get_watchcat_q (phrase->H[j], 1);
        if (bq == ((void*)0) || bq->vn > q->vn) {
          bq = q;
        }
        if (bq->vn == 0) {
          done = 1;
        }
      }
    }

    assert (bq != ((void*)0));
    if (my_verbosity > 1) {
      fprintf (stderr, "added to %lld queue\n", bq->id);
    }
    watchcat_q_add (bq, w);

    *b = w;
  } else {
    free_watchcat_query (query);
  }
  return *b;
}
