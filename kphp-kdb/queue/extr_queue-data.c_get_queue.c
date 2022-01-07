
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct conn_query {int dummy; } ;
struct TYPE_9__ {char* x; TYPE_2__* y; } ;
typedef TYPE_1__ shmap_pair_string_vptr ;
struct TYPE_10__ {char* name; int id; int * ev_last; int ev_first; struct conn_query* last_q; struct conn_query* first_q; } ;
typedef TYPE_2__ queue ;
typedef int ll ;


 int ZERO_UID ;
 int alias ;
 int assert (int ) ;
 int dbg (char*,char*,...) ;
 scalar_t__ dl_get_memory_used () ;
 char* dl_strdup (char*) ;
 int get_next_alias () ;
 int h_queue ;
 scalar_t__ map_ll_vptr_add (int *,int ) ;
 TYPE_2__* queue_malloc () ;
 TYPE_1__* shmap_string_vptr_add (int *,TYPE_1__) ;
 TYPE_1__* shmap_string_vptr_get (int *,TYPE_1__) ;
 int str_memory ;

inline queue *get_queue (char *name, int force) {
  shmap_pair_string_vptr a, *b;
  a.y = ((void*)0);
  a.x = name;

  queue *q = ((void*)0);
  if (force) {
    b = shmap_string_vptr_add (&h_queue, a);
    if (b->y == ((void*)0)) {
      str_memory -= dl_get_memory_used();
      b->x = dl_strdup (b->x);
      str_memory += dl_get_memory_used();

      q = b->y = queue_malloc();

      q->name = b->x;
      q->first_q = q->last_q = (struct conn_query *) q;

      q->ev_first = q->ev_last = ((void*)0);




        q->id = get_next_alias();


      dbg ("ALIAS for [%s] = %lld\n", name, q->id);
      ll tid = q->id;

      if (tid == 0) {
        tid = ZERO_UID;
      }

      dbg ("add alias : %lld\n", tid);
      queue **tq = (queue **)map_ll_vptr_add (&alias, tid);
      assert (*tq == ((void*)0));
      *tq = q;
    } else {
      q = b->y;
    }
  } else {

    b = shmap_string_vptr_get (&h_queue, a);
    if (b != ((void*)0)) {
      q = b->y;
    }
  }

  return q;
}
