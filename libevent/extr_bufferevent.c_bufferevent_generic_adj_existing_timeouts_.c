
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int ev_write; int timeout_write; int ev_read; int timeout_read; } ;


 int EV_READ ;
 int EV_WRITE ;
 scalar_t__ bufferevent_add_event_ (int *,int *) ;
 scalar_t__ event_pending (int *,int ,int *) ;
 int event_remove_timer (int *) ;
 scalar_t__ evutil_timerisset (int *) ;

int
bufferevent_generic_adj_existing_timeouts_(struct bufferevent *bev)
{
 int r = 0;
 if (event_pending(&bev->ev_read, EV_READ, ((void*)0))) {
  if (evutil_timerisset(&bev->timeout_read)) {
       if (bufferevent_add_event_(&bev->ev_read, &bev->timeout_read) < 0)
        r = -1;
  } else {
   event_remove_timer(&bev->ev_read);
  }
 }
 if (event_pending(&bev->ev_write, EV_WRITE, ((void*)0))) {
  if (evutil_timerisset(&bev->timeout_write)) {
   if (bufferevent_add_event_(&bev->ev_write, &bev->timeout_write) < 0)
    r = -1;
  } else {
   event_remove_timer(&bev->ev_write);
  }
 }
 return r;
}
