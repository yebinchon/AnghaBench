
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int event_free_debug_globals () ;
 int event_free_evsig_globals () ;
 int event_free_evutil_globals () ;

__attribute__((used)) static void
event_free_globals(void)
{
 event_free_debug_globals();
 event_free_evsig_globals();
 event_free_evutil_globals();
}
