
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int ev_flags; } ;


 int EVLIST_INIT ;

int
event_initialized(const struct event *ev)
{
 if (!(ev->ev_flags & EVLIST_INIT))
  return 0;

 return 1;
}
