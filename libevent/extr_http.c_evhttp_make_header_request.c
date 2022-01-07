
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {scalar_t__ type; int output_headers; int output_buffer; int minor; int major; int uri; } ;
struct evhttp_connection {int bufev; } ;
typedef int size ;
typedef int ev_uint16_t ;


 int EVHTTP_METHOD_HAS_BODY ;
 scalar_t__ EVHTTP_REQ_POST ;
 scalar_t__ EVHTTP_REQ_PUT ;
 int EV_SIZE_ARG (scalar_t__) ;
 int EV_SIZE_FMT ;
 int bufferevent_get_output (int ) ;
 int evbuffer_add_printf (int ,char*,char const*,int ,int ,int ) ;
 scalar_t__ evbuffer_get_length (int ) ;
 int evhttp_add_header (int ,char*,char*) ;
 int * evhttp_find_header (int ,char*) ;
 char* evhttp_method_ (struct evhttp_connection*,scalar_t__,int*) ;
 int evhttp_remove_header (int ,char*) ;
 int evutil_snprintf (char*,int,int ,int ) ;

__attribute__((used)) static void
evhttp_make_header_request(struct evhttp_connection *evcon,
    struct evhttp_request *req)
{
 const char *method;
 ev_uint16_t flags;

 evhttp_remove_header(req->output_headers, "Proxy-Connection");


 if (!(method = evhttp_method_(evcon, req->type, &flags))) {
  method = "NULL";
 }

 evbuffer_add_printf(bufferevent_get_output(evcon->bufev),
     "%s %s HTTP/%d.%d\r\n",
     method, req->uri, req->major, req->minor);



 if ((flags & EVHTTP_METHOD_HAS_BODY) &&
     (evbuffer_get_length(req->output_buffer) > 0 ||
      req->type == EVHTTP_REQ_POST || req->type == EVHTTP_REQ_PUT) &&
     evhttp_find_header(req->output_headers, "Content-Length") == ((void*)0)) {
  char size[22];
  evutil_snprintf(size, sizeof(size), EV_SIZE_FMT,
      EV_SIZE_ARG(evbuffer_get_length(req->output_buffer)));
  evhttp_add_header(req->output_headers, "Content-Length", size);
 }
}
