
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
struct evhttp_connection {int dummy; } ;
struct event_base {int dummy; } ;


 int event_base_loopexit (struct event_base*,int *) ;
 int evhttp_connection_free (struct evhttp_connection*) ;
 struct event_base* evhttp_connection_get_base (struct evhttp_connection*) ;
 int test_ok ;
 int tt_assert (int) ;

__attribute__((used)) static void
http_connection_fail_done(struct evhttp_request *req, void *arg)
{
 struct evhttp_connection *evcon = arg;
 struct event_base *base = evhttp_connection_get_base(evcon);





 tt_assert(!req);

 evhttp_connection_free(evcon);

 test_ok = 1;

 end:
 event_base_loopexit(base, ((void*)0));
}
