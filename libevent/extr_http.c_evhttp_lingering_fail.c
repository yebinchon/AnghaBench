
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
struct evhttp_connection {int flags; } ;


 int EVHTTP_CON_LINGERING_CLOSE ;
 int EVREQ_HTTP_DATA_TOO_LONG ;
 int evhttp_connection_fail_ (struct evhttp_connection*,int ) ;
 int evhttp_lingering_close (struct evhttp_connection*,struct evhttp_request*) ;

__attribute__((used)) static void
evhttp_lingering_fail(struct evhttp_connection *evcon,
 struct evhttp_request *req)
{
 if (evcon->flags & EVHTTP_CON_LINGERING_CLOSE)
  evhttp_lingering_close(evcon, req);
 else
  evhttp_connection_fail_(evcon, EVREQ_HTTP_DATA_TOO_LONG);
}
