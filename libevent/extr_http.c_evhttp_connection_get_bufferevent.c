
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_connection {struct bufferevent* bufev; } ;
struct bufferevent {int dummy; } ;



struct bufferevent* evhttp_connection_get_bufferevent(struct evhttp_connection *evcon)
{
 return evcon->bufev;
}
