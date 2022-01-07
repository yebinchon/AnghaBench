
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_connection {struct bufferevent* bufev; } ;
struct event_callback {int dummy; } ;
struct bufferevent {int (* readcb ) (struct bufferevent*,struct evhttp_connection*) ;} ;


 int stub1 (struct bufferevent*,struct evhttp_connection*) ;

__attribute__((used)) static void
evhttp_deferred_read_cb(struct event_callback *cb, void *data)
{
 struct evhttp_connection *evcon = data;
 struct bufferevent *bev = evcon->bufev;
 if (bev->readcb)
  (bev->readcb)(evcon->bufev, evcon);
}
