
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_private {int dns_request; } ;
struct bufferevent {int enabled; int ev_base; int ev_write; int ev_read; int output; int input; } ;
typedef int evutil_socket_t ;


 int BEV_IS_SOCKET (struct bufferevent*) ;
 int BEV_LOCK (struct bufferevent*) ;
 int BEV_UNLOCK (struct bufferevent*) ;
 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;
 int EVUTIL_ASSERT (int ) ;
 int EV_FINALIZE ;
 int EV_PERSIST ;
 int EV_READ ;
 int EV_WRITE ;
 int bufferevent_enable (struct bufferevent*,int ) ;
 int bufferevent_readcb ;
 int bufferevent_writecb ;
 int evbuffer_unfreeze (int ,int) ;
 int event_assign (int *,int ,int ,int,int ,struct bufferevent*) ;
 int event_del (int *) ;
 int evutil_getaddrinfo_cancel_async_ (int ) ;

__attribute__((used)) static void
be_socket_setfd(struct bufferevent *bufev, evutil_socket_t fd)
{
 struct bufferevent_private *bufev_p = BEV_UPCAST(bufev);

 BEV_LOCK(bufev);
 EVUTIL_ASSERT(BEV_IS_SOCKET(bufev));

 event_del(&bufev->ev_read);
 event_del(&bufev->ev_write);

 evbuffer_unfreeze(bufev->input, 0);
 evbuffer_unfreeze(bufev->output, 1);

 event_assign(&bufev->ev_read, bufev->ev_base, fd,
     EV_READ|EV_PERSIST|EV_FINALIZE, bufferevent_readcb, bufev);
 event_assign(&bufev->ev_write, bufev->ev_base, fd,
     EV_WRITE|EV_PERSIST|EV_FINALIZE, bufferevent_writecb, bufev);

 if (fd >= 0)
  bufferevent_enable(bufev, bufev->enabled);

 evutil_getaddrinfo_cancel_async_(bufev_p->dns_request);

 BEV_UNLOCK(bufev);
}
