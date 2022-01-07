
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct event_base {int dummy; } ;
struct evconnlistener {int dummy; } ;
struct bufferevent {int dummy; } ;
typedef int evutil_socket_t ;


 int BEV_OPT_CLOSE_ON_FREE ;
 int EV_READ ;
 int EV_WRITE ;
 int MESSAGE ;
 int bufferevent_disable (struct bufferevent*,int ) ;
 int bufferevent_enable (struct bufferevent*,int ) ;
 int bufferevent_setcb (struct bufferevent*,int *,int ,int ,int *) ;
 struct bufferevent* bufferevent_socket_new (struct event_base*,int ,int ) ;
 int bufferevent_write (struct bufferevent*,int ,int ) ;
 int conn_eventcb ;
 int conn_writecb ;
 int event_base_loopbreak (struct event_base*) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int strlen (int ) ;

__attribute__((used)) static void
listener_cb(struct evconnlistener *listener, evutil_socket_t fd,
    struct sockaddr *sa, int socklen, void *user_data)
{
 struct event_base *base = user_data;
 struct bufferevent *bev;

 bev = bufferevent_socket_new(base, fd, BEV_OPT_CLOSE_ON_FREE);
 if (!bev) {
  fprintf(stderr, "Error constructing bufferevent!");
  event_base_loopbreak(base);
  return;
 }
 bufferevent_setcb(bev, ((void*)0), conn_writecb, conn_eventcb, ((void*)0));
 bufferevent_enable(bev, EV_WRITE);
 bufferevent_disable(bev, EV_READ);

 bufferevent_write(bev, MESSAGE, strlen(MESSAGE));
}
