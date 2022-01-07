
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_private {int write_suspended; int read_suspended; } ;
struct bufferevent {short enabled; int ev_write; int timeout_write; int output; int ev_read; int timeout_read; } ;


 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;
 short const EV_READ ;
 short const EV_WRITE ;
 scalar_t__ evbuffer_get_length (int ) ;
 int event_add (int *,int *) ;
 int event_del (int *) ;
 scalar_t__ evutil_timerisset (int *) ;

int
bufferevent_generic_adj_timeouts_(struct bufferevent *bev)
{
 const short enabled = bev->enabled;
 struct bufferevent_private *bev_p = BEV_UPCAST(bev);
 int r1=0, r2=0;
 if ((enabled & EV_READ) && !bev_p->read_suspended &&
     evutil_timerisset(&bev->timeout_read))
  r1 = event_add(&bev->ev_read, &bev->timeout_read);
 else
  r1 = event_del(&bev->ev_read);

 if ((enabled & EV_WRITE) && !bev_p->write_suspended &&
     evutil_timerisset(&bev->timeout_write) &&
     evbuffer_get_length(bev->output))
  r2 = event_add(&bev->ev_write, &bev->timeout_write);
 else
  r2 = event_del(&bev->ev_write);
 if (r1 < 0 || r2 < 0)
  return -1;
 return 0;
}
