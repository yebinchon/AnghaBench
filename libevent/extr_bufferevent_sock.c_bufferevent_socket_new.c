
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
struct bufferevent {int output; int input; int ev_base; int ev_write; int ev_read; } ;
struct bufferevent_private {struct bufferevent bev; } ;
typedef int evutil_socket_t ;


 int EVBUFFER_FLAG_DRAINS_TO_FD ;
 int EV_FINALIZE ;
 int EV_PERSIST ;
 int EV_READ ;
 int EV_WRITE ;
 struct bufferevent* bufferevent_async_new_ (struct event_base*,int ,int) ;
 scalar_t__ bufferevent_init_common_ (struct bufferevent_private*,struct event_base*,int *,int) ;
 int bufferevent_ops_socket ;
 int bufferevent_readcb ;
 int bufferevent_socket_outbuf_cb ;
 int bufferevent_writecb ;
 int evbuffer_add_cb (int ,int ,struct bufferevent*) ;
 int evbuffer_freeze (int ,int) ;
 int evbuffer_set_flags (int ,int ) ;
 int event_assign (int *,int ,int ,int,int ,struct bufferevent*) ;
 scalar_t__ event_base_get_iocp_ (struct event_base*) ;
 struct bufferevent_private* mm_calloc (int,int) ;
 int mm_free (struct bufferevent_private*) ;

struct bufferevent *
bufferevent_socket_new(struct event_base *base, evutil_socket_t fd,
    int options)
{
 struct bufferevent_private *bufev_p;
 struct bufferevent *bufev;






 if ((bufev_p = mm_calloc(1, sizeof(struct bufferevent_private)))== ((void*)0))
  return ((void*)0);

 if (bufferevent_init_common_(bufev_p, base, &bufferevent_ops_socket,
        options) < 0) {
  mm_free(bufev_p);
  return ((void*)0);
 }
 bufev = &bufev_p->bev;
 evbuffer_set_flags(bufev->output, EVBUFFER_FLAG_DRAINS_TO_FD);

 event_assign(&bufev->ev_read, bufev->ev_base, fd,
     EV_READ|EV_PERSIST|EV_FINALIZE, bufferevent_readcb, bufev);
 event_assign(&bufev->ev_write, bufev->ev_base, fd,
     EV_WRITE|EV_PERSIST|EV_FINALIZE, bufferevent_writecb, bufev);

 evbuffer_add_cb(bufev->output, bufferevent_socket_outbuf_cb, bufev);

 evbuffer_freeze(bufev->input, 0);
 evbuffer_freeze(bufev->output, 1);

 return bufev;
}
