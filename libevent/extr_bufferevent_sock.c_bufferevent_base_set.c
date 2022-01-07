
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
struct bufferevent {int ev_write; int ev_read; struct event_base* ev_base; } ;


 int BEV_IS_SOCKET (struct bufferevent*) ;
 int BEV_LOCK (struct bufferevent*) ;
 int BEV_UNLOCK (struct bufferevent*) ;
 int event_base_set (struct event_base*,int *) ;

int
bufferevent_base_set(struct event_base *base, struct bufferevent *bufev)
{
 int res = -1;

 BEV_LOCK(bufev);
 if (!BEV_IS_SOCKET(bufev))
  goto done;

 bufev->ev_base = base;

 res = event_base_set(base, &bufev->ev_read);
 if (res == -1)
  goto done;

 res = event_base_set(base, &bufev->ev_write);
done:
 BEV_UNLOCK(bufev);
 return res;
}
