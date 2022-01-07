
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;
typedef int evutil_socket_t ;


 int EV_READ ;
 int EV_WRITE ;
 int bufferevent_enable (struct bufferevent*,int) ;

__attribute__((used)) static void
acceptcb_deferred(evutil_socket_t fd, short events, void *arg)
{
 struct bufferevent *bev = arg;
 bufferevent_enable(bev, EV_READ|EV_WRITE);
}
