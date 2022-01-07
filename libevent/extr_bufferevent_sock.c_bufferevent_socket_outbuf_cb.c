
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_cb_info {scalar_t__ n_added; } ;
struct evbuffer {int dummy; } ;
struct bufferevent_private {int write_suspended; } ;
struct bufferevent {int enabled; int timeout_write; int ev_write; } ;


 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;
 int EV_WRITE ;
 int bufferevent_add_event_ (int *,int *) ;
 int event_pending (int *,int,int *) ;

__attribute__((used)) static void
bufferevent_socket_outbuf_cb(struct evbuffer *buf,
    const struct evbuffer_cb_info *cbinfo,
    void *arg)
{
 struct bufferevent *bufev = arg;
 struct bufferevent_private *bufev_p = BEV_UPCAST(bufev);

 if (cbinfo->n_added &&
     (bufev->enabled & EV_WRITE) &&
     !event_pending(&bufev->ev_write, EV_WRITE, ((void*)0)) &&
     !bufev_p->write_suspended) {


  if (bufferevent_add_event_(&bufev->ev_write, &bufev->timeout_write) == -1) {

  }
 }
}
