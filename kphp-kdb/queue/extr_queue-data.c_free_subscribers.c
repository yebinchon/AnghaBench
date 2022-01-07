
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ size; } ;
struct TYPE_7__ {TYPE_3__* q; int id; TYPE_1__ s; } ;
typedef TYPE_2__ subscribers ;
struct TYPE_8__ {int subscr_cnt; } ;


 int assert (int) ;
 int dl_free (TYPE_2__*,int) ;
 scalar_t__ dl_get_memory_used () ;
 int h_subscribers ;
 int hset_llp_del (int *,int *) ;
 int queue_fix (TYPE_3__*) ;
 int subscribers_cnt ;
 int subscribers_memory ;

void free_subscribers (subscribers *s) {
  assert (s->s.size == 0);
  hset_llp_del (&h_subscribers, &s->id);
  subscribers_cnt--;

  if (s->q != ((void*)0)) {
    s->q->subscr_cnt--;
    queue_fix (s->q);
  }

  subscribers_memory -= dl_get_memory_used();
  dl_free (s, sizeof (subscribers));
  subscribers_memory += dl_get_memory_used();
}
