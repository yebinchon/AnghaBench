
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct event {int ev_flags; int ev_pri; TYPE_1__* ev_base; } ;
struct TYPE_2__ {int nactivequeues; } ;


 int EVLIST_ACTIVE ;
 int event_debug_assert_is_setup_ (struct event*) ;

int
event_priority_set(struct event *ev, int pri)
{
 event_debug_assert_is_setup_(ev);

 if (ev->ev_flags & EVLIST_ACTIVE)
  return (-1);
 if (pri < 0 || pri >= ev->ev_base->nactivequeues)
  return (-1);

 ev->ev_pri = pri;

 return (0);
}
