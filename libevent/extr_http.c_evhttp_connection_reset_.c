
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_connection {int fd; int state; int flags; int bufev; int closecb_arg; int (* closecb ) (struct evhttp_connection*,int ) ;} ;
struct evbuffer {int dummy; } ;


 int EVCON_DISCONNECTED ;
 int EVHTTP_CON_READING_ERROR ;
 int EVUTIL_ASSERT (int ) ;
 int EVUTIL_SHUT_WR ;
 int EV_READ ;
 int EV_WRITE ;
 int bufferevent_disable_hard_ (int ,int) ;
 struct evbuffer* bufferevent_get_input (int ) ;
 struct evbuffer* bufferevent_get_output (int ) ;
 int bufferevent_getfd (int ) ;
 int bufferevent_setcb (int ,int *,int *,int *,int *) ;
 int bufferevent_setfd (int ,int) ;
 int evbuffer_drain (struct evbuffer*,int) ;
 scalar_t__ evhttp_connected (struct evhttp_connection*) ;
 int evutil_closesocket (int) ;
 int shutdown (int,int ) ;
 int stub1 (struct evhttp_connection*,int ) ;

void
evhttp_connection_reset_(struct evhttp_connection *evcon)
{
 struct evbuffer *tmp;
 int err;

 bufferevent_setcb(evcon->bufev, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
 bufferevent_disable_hard_(evcon->bufev, EV_READ|EV_WRITE);

 if (evcon->fd == -1)
  evcon->fd = bufferevent_getfd(evcon->bufev);

 if (evcon->fd != -1) {

  if (evhttp_connected(evcon) && evcon->closecb != ((void*)0))
   (*evcon->closecb)(evcon, evcon->closecb_arg);

  shutdown(evcon->fd, EVUTIL_SHUT_WR);
  evutil_closesocket(evcon->fd);
  evcon->fd = -1;
 }
 err = bufferevent_setfd(evcon->bufev, -1);
 EVUTIL_ASSERT(!err && "setfd");


 tmp = bufferevent_get_output(evcon->bufev);
 err = evbuffer_drain(tmp, -1);
 EVUTIL_ASSERT(!err && "drain output");
 tmp = bufferevent_get_input(evcon->bufev);
 err = evbuffer_drain(tmp, -1);
 EVUTIL_ASSERT(!err && "drain input");

 evcon->flags &= ~EVHTTP_CON_READING_ERROR;

 evcon->state = EVCON_DISCONNECTED;
}
