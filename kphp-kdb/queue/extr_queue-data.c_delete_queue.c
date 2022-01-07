
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * x; int * y; } ;
typedef TYPE_1__ shmap_pair_string_vptr ;
struct TYPE_9__ {scalar_t__ id; int * name; int * extra; } ;
typedef TYPE_2__ queue ;
typedef scalar_t__ qtype ;


 scalar_t__ Q_WATCHCAT ;
 scalar_t__ ZERO_UID ;
 int alias ;
 int dbg (char*,scalar_t__) ;
 scalar_t__ dl_get_memory_used () ;
 int dl_strfree (int *) ;
 scalar_t__ get_qtype (int *) ;
 int h_queue ;
 int map_ll_vptr_del (int *,scalar_t__) ;
 int process_user_query_queue (TYPE_2__*) ;
 int queue_clear_subs (TYPE_2__*) ;
 int queue_free (TYPE_2__*) ;
 int shmap_string_vptr_del (int *,TYPE_1__) ;
 int str_memory ;

inline void delete_queue (queue *q) {
  if (q->name != ((void*)0)) {

    shmap_pair_string_vptr a;
    a.y = ((void*)0);
    a.x = q->name;

    shmap_string_vptr_del (&h_queue, a);


    process_user_query_queue (q);

    qtype tp = get_qtype (q->name);

    if (tp == Q_WATCHCAT) {
      str_memory -= dl_get_memory_used();
      dl_strfree (q->extra);
      str_memory += dl_get_memory_used();
      q->extra = ((void*)0);
    }

    queue_clear_subs (q);

    str_memory -= dl_get_memory_used();
    dl_strfree (q->name);
    str_memory += dl_get_memory_used();
    q->name = ((void*)0);

    if (q->id == 0) {
      q->id = ZERO_UID;
    }
    map_ll_vptr_del (&alias, q->id);
    dbg ("del alias %lld\n", q->id);

    queue_free (q);
  }
}
