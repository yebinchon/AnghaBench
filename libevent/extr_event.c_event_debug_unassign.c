
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int ev_flags; } ;


 int EVLIST_INIT ;
 int event_debug_assert_not_added_ (struct event*) ;
 int event_debug_note_teardown_ (struct event*) ;

void
event_debug_unassign(struct event *ev)
{
 event_debug_assert_not_added_(ev);
 event_debug_note_teardown_(ev);

 ev->ev_flags &= ~EVLIST_INIT;
}
