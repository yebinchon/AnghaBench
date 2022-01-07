
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_connection {int bufev; int flags; } ;


 int EVHTTP_CON_CLOSEDETECT ;
 int EV_READ ;
 int bufferevent_disable (int ,int ) ;

__attribute__((used)) static void
evhttp_connection_stop_detectclose(struct evhttp_connection *evcon)
{
 evcon->flags &= ~EVHTTP_CON_CLOSEDETECT;
 bufferevent_disable(evcon->bufev, EV_READ);
}
