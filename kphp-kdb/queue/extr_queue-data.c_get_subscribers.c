
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int s; scalar_t__ id; TYPE_2__* q; } ;
typedef TYPE_1__ subscribers ;
struct TYPE_7__ {int subscr_cnt; } ;
typedef TYPE_2__ queue ;
typedef scalar_t__ ll ;


 int IS_UID (scalar_t__) ;
 TYPE_1__* alloc_subscribers () ;
 int assert (int ) ;
 int fprintf (int ,char*,scalar_t__) ;
 TYPE_2__* get_queue_by_alias (scalar_t__) ;
 int h_subscribers ;
 scalar_t__ hset_llp_add (int *,scalar_t__*) ;
 scalar_t__ hset_llp_get (int *,scalar_t__*) ;
 int my_verbosity ;
 int stderr ;
 int treap_init (int *) ;

inline subscribers *get_subscribers (ll id, int force) {
  subscribers **b;



  if (force) {
    queue *q = ((void*)0);

    if (!IS_UID (id)) {
      q = get_queue_by_alias (id);
      if (q == ((void*)0)) {
        return ((void*)0);
      }
    }

    b = (subscribers **)hset_llp_add (&h_subscribers, &id);


    if (*b == (subscribers *)&id) {
      subscribers *w = alloc_subscribers();
      if (!IS_UID (id)) {
        assert (q != ((void*)0));
        w->q = q;
        q->subscr_cnt++;
      }

      w->id = id;
      treap_init (&w->s);

      if (my_verbosity > 1) {
        fprintf (stderr, "subcribers_created id = %lld\n", id);
      }

      *b = w;
    }
  } else {
    b = (subscribers **)hset_llp_get (&h_subscribers, &id);
    if (b == ((void*)0)) {
      return ((void*)0);
    }
  }
  return *b;
}
