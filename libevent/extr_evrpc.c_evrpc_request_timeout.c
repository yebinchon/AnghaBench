
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_request_wrapper {struct evhttp_connection* evcon; } ;
struct evhttp_connection {int dummy; } ;
typedef int evutil_socket_t ;


 int EVREQ_HTTP_TIMEOUT ;
 int EVUTIL_ASSERT (int ) ;
 int evhttp_connection_fail_ (struct evhttp_connection*,int ) ;

__attribute__((used)) static void
evrpc_request_timeout(evutil_socket_t fd, short what, void *arg)
{
 struct evrpc_request_wrapper *ctx = arg;
 struct evhttp_connection *evcon = ctx->evcon;
 EVUTIL_ASSERT(evcon != ((void*)0));

 evhttp_connection_fail_(evcon, EVREQ_HTTP_TIMEOUT);
}
