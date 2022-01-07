
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_changelist_fdinfo {int dummy; } ;
struct event_changelist {int dummy; } ;
struct event_change {short old_events; void* close_change; void* write_change; void* read_change; } ;
struct event_base {struct event_changelist changelist; } ;
typedef int evutil_socket_t ;
typedef void* ev_uint8_t ;


 short EV_CHANGE_DEL ;
 short EV_CLOSED ;
 short EV_ET ;
 short EV_READ ;
 short EV_SIGNAL ;
 short EV_WRITE ;
 int event_changelist_check (struct event_base*) ;
 struct event_change* event_changelist_get_or_construct (struct event_changelist*,int ,short,struct event_changelist_fdinfo*) ;

int
event_changelist_del_(struct event_base *base, evutil_socket_t fd, short old, short events,
    void *p)
{
 struct event_changelist *changelist = &base->changelist;
 struct event_changelist_fdinfo *fdinfo = p;
 struct event_change *change;
 ev_uint8_t del = EV_CHANGE_DEL | (events & EV_ET);

 event_changelist_check(base);
 change = event_changelist_get_or_construct(changelist, fd, old, fdinfo);
 event_changelist_check(base);
 if (!change)
  return -1;
 if (events & (EV_READ|EV_SIGNAL)) {
  if (!(change->old_events & (EV_READ | EV_SIGNAL)))
   change->read_change = 0;
  else
   change->read_change = del;
 }
 if (events & EV_WRITE) {
  if (!(change->old_events & EV_WRITE))
   change->write_change = 0;
  else
   change->write_change = del;
 }
 if (events & EV_CLOSED) {
  if (!(change->old_events & EV_CLOSED))
   change->close_change = 0;
  else
   change->close_change = del;
 }

 event_changelist_check(base);
 return (0);
}
