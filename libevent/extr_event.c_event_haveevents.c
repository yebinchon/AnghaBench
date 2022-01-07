
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {scalar_t__ virtual_event_count; scalar_t__ event_count; } ;



__attribute__((used)) static int
event_haveevents(struct event_base *base)
{

 return (base->virtual_event_count > 0 || base->event_count > 0);
}
