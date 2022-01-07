
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct evhttp_connection {scalar_t__ state; int timeout_write; int timeout_read; int bufev; int flags; } ;


 scalar_t__ EVCON_CONNECTING ;
 int EVHTTP_CON_TIMEOUT_ADJUSTED ;
 int bufferevent_set_timeouts (int ,int *,int *) ;
 int evhttp_set_timeout_tv_ (int *,struct timeval const*,int) ;

void evhttp_connection_set_read_timeout_tv(struct evhttp_connection *evcon,
    const struct timeval *tv)
{
 evcon->flags |= EVHTTP_CON_TIMEOUT_ADJUSTED;
 evhttp_set_timeout_tv_(&evcon->timeout_read, tv, -1);
 if (evcon->state != EVCON_CONNECTING)
  bufferevent_set_timeouts(evcon->bufev,
      &evcon->timeout_read, &evcon->timeout_write);
}
