
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_connection {int bufev; } ;


 int EV_WRITE ;
 int bufferevent_disable (int ,int ) ;

__attribute__((used)) static void
evhttp_send_continue_done(struct evhttp_connection *evcon, void *arg)
{
 bufferevent_disable(evcon->bufev, EV_WRITE);
}
