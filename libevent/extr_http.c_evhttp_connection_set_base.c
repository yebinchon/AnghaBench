
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_connection {scalar_t__ state; int bufev; struct event_base* base; } ;
struct event_base {int dummy; } ;


 scalar_t__ EVCON_DISCONNECTED ;
 int EVUTIL_ASSERT (int) ;
 int bufferevent_base_set (struct event_base*,int ) ;

void
evhttp_connection_set_base(struct evhttp_connection *evcon,
    struct event_base *base)
{
 EVUTIL_ASSERT(evcon->base == ((void*)0));
 EVUTIL_ASSERT(evcon->state == EVCON_DISCONNECTED);
 evcon->base = base;
 bufferevent_base_set(base, evcon->bufev);
}
