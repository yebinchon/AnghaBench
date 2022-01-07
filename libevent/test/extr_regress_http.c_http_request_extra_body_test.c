
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp {int dummy; } ;
struct evbuffer {int dummy; } ;
struct bufferevent {int dummy; } ;
struct basic_test_data {int base; } ;
typedef int ev_uint16_t ;


 int bufferevent_free (struct bufferevent*) ;
 int evbuffer_add_printf (struct evbuffer*,char*) ;
 int evbuffer_free (struct evbuffer*) ;
 scalar_t__ evbuffer_get_length (struct evbuffer*) ;
 struct evbuffer* evbuffer_new () ;
 int evbuffer_pullup (struct evbuffer*,int) ;
 int evhttp_free (struct evhttp*) ;
 int exit_base ;
 int http_run_bev_request (int ,int ,char*,int,int ) ;
 struct evhttp* http_setup_gencb (int *,int ,int ,int ,int *) ;
 int http_timeout_cb ;
 int test_ok ;
 int tt_assert (int) ;

__attribute__((used)) static void
http_request_extra_body_test(void *arg)
{
 struct basic_test_data *data = arg;
 struct bufferevent *bev = ((void*)0);
 ev_uint16_t port = 0;
 int i;
 struct evhttp *http =
  http_setup_gencb(&port, data->base, 0, http_timeout_cb, ((void*)0));
 struct evbuffer *body = ((void*)0);

 exit_base = data->base;
 test_ok = 0;

 body = evbuffer_new();
 for (i = 0; i < 10000; ++i)
  evbuffer_add_printf(body, "this is the body that HEAD should not have");

 http_run_bev_request(data->base, port,
  "HEAD /timeout HTTP/1.1\r\n"
  "Host: somehost\r\n"
  "Connection: close\r\n"
  "Content-Length: %i\r\n"
  "\r\n%s",
  (int)evbuffer_get_length(body),
  evbuffer_pullup(body, -1)
 );
 tt_assert(test_ok == -2);

 http_run_bev_request(data->base, port,
  "HEAD /__gencb__ HTTP/1.1\r\n"
  "Host: somehost\r\n"
  "Connection: close\r\n"
  "Content-Length: %i\r\n"
  "\r\n%s",
  (int)evbuffer_get_length(body),
  evbuffer_pullup(body, -1)
 );
 tt_assert(test_ok == -2);

 end:
 evhttp_free(http);
 if (bev)
  bufferevent_free(bev);
 if (body)
  evbuffer_free(body);
}
