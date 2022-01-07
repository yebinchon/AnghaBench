
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_connection {int timeout_write; int timeout_read; int bufev; int flags; } ;


 int EVHTTP_CON_TIMEOUT_ADJUSTED ;
 int HTTP_READ_TIMEOUT ;
 int HTTP_WRITE_TIMEOUT ;
 int bufferevent_set_timeouts (int ,int *,int *) ;
 int evhttp_set_timeout_ (int *,int,int ) ;

void
evhttp_connection_set_timeout(struct evhttp_connection *evcon,
    int timeout)
{
 if (timeout != -1) {
  evcon->flags |= EVHTTP_CON_TIMEOUT_ADJUSTED;
 } else {
  evcon->flags &= ~EVHTTP_CON_TIMEOUT_ADJUSTED;
 }
 evhttp_set_timeout_(&evcon->timeout_read, timeout, HTTP_READ_TIMEOUT);
 evhttp_set_timeout_(&evcon->timeout_write, timeout, HTTP_WRITE_TIMEOUT);
 bufferevent_set_timeouts(evcon->bufev,
     &evcon->timeout_read, &evcon->timeout_write);
}
