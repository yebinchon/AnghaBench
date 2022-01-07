
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
struct evhttp_connection {int dummy; } ;
struct evhttp {int dummy; } ;
struct bufferevent {int dummy; } ;
struct basic_test_data {int base; } ;
typedef int ev_uint16_t ;


 int EVHTTP_REQ_GET ;
 int HTTP_BIND_SSL ;
 struct bufferevent* create_bev (int ,int,int) ;
 int event_base_dispatch (int ) ;
 int evhttp_add_header (int ,char*,char*) ;
 struct evhttp_connection* evhttp_connection_base_bufferevent_new (int ,int *,struct bufferevent*,char*,int ) ;
 int evhttp_connection_free (struct evhttp_connection*) ;
 int evhttp_free (struct evhttp*) ;
 int evhttp_make_request (struct evhttp_connection*,struct evhttp_request*,int ,char*) ;
 int evhttp_request_get_output_headers (struct evhttp_request*) ;
 struct evhttp_request* evhttp_request_new (int ,void*) ;
 int exit_base ;
 int http_request_done ;
 struct evhttp* http_setup (int *,int ,int ) ;
 scalar_t__ test_ok ;
 int tt_abort_msg (char*) ;
 int tt_assert (struct evhttp_connection*) ;

__attribute__((used)) static void
http_stream_out_test_impl(void *arg, int ssl)
{
 struct basic_test_data *data = arg;
 ev_uint16_t port = 0;
 struct evhttp_connection *evcon = ((void*)0);
 struct evhttp_request *req = ((void*)0);
 struct bufferevent *bev;
 struct evhttp *http = http_setup(&port, data->base, ssl ? HTTP_BIND_SSL : 0);

 test_ok = 0;
 exit_base = data->base;

 bev = create_bev(data->base, -1, ssl);
 evcon = evhttp_connection_base_bufferevent_new(
  data->base, ((void*)0), bev, "127.0.0.1", port);
 tt_assert(evcon);






 req = evhttp_request_new(http_request_done,
     (void *)"This is funnybut not hilarious.bwv 1052");


 evhttp_add_header(evhttp_request_get_output_headers(req), "Host", "somehost");


 if (evhttp_make_request(evcon, req, EVHTTP_REQ_GET, "/streamed")
     == -1) {
  tt_abort_msg("Couldn't make request");
 }

 event_base_dispatch(data->base);

 end:
 if (evcon)
  evhttp_connection_free(evcon);
 if (http)
  evhttp_free(http);
}
