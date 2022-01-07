
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_connection {struct evhttp* http_server; } ;
struct evhttp {int dummy; } ;



struct evhttp *
evhttp_connection_get_server(struct evhttp_connection *evcon)
{
 return evcon->http_server;
}
