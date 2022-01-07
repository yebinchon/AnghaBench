
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
struct evbuffer {int dummy; } ;


 int BASIC_REQUEST_BODY ;
 int HTTP_OK ;
 int evbuffer_add_printf (struct evbuffer*,int ) ;
 int evbuffer_free (struct evbuffer*) ;
 struct evbuffer* evbuffer_new () ;
 int evhttp_send_reply (struct evhttp_request*,int ,char*,struct evbuffer*) ;

__attribute__((used)) static void
http_large_cb(struct evhttp_request *req, void *arg)
{
 struct evbuffer *evb = evbuffer_new();
 int i;

 for (i = 0; i < 1<<20; ++i) {
  evbuffer_add_printf(evb, BASIC_REQUEST_BODY);
 }
 evhttp_send_reply(req, HTTP_OK, "Everything is fine", evb);
 evbuffer_free(evb);
}
