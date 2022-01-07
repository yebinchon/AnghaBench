
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evhttp_request {scalar_t__ kind; int chunked; int ntoread; TYPE_1__* evcon; int input_headers; int type; } ;
struct evhttp_connection {int bufev; int state; } ;
typedef int ev_uint64_t ;
struct TYPE_2__ {int max_body_size; } ;



 int EVCON_READING_BODY ;
 scalar_t__ EVHTTP_REQUEST ;
 int EVREQ_HTTP_INVALID_HEADER ;
 int EV_INT64_MAX ;
 int HTTP_EXPECTATIONFAILED ;


 int bufferevent_get_input (int ) ;
 int evbuffer_get_length (int ) ;
 int evhttp_connection_done (struct evhttp_connection*) ;
 int evhttp_connection_fail_ (struct evhttp_connection*,int ) ;
 char* evhttp_find_header (int ,char*) ;
 int evhttp_get_body_length (struct evhttp_request*) ;
 int evhttp_have_expect (struct evhttp_request*,int) ;
 int evhttp_lingering_fail (struct evhttp_connection*,struct evhttp_request*) ;
 int evhttp_method_may_have_body_ (struct evhttp_connection*,int ) ;
 int evhttp_read_body (struct evhttp_connection*,struct evhttp_request*) ;
 int evhttp_send_continue (struct evhttp_connection*,struct evhttp_request*) ;
 int evhttp_send_error (struct evhttp_request*,int ,int *) ;
 scalar_t__ evutil_ascii_strcasecmp (char const*,char*) ;

__attribute__((used)) static void
evhttp_get_body(struct evhttp_connection *evcon, struct evhttp_request *req)
{
 const char *xfer_enc;


 if (req->kind == EVHTTP_REQUEST &&
     !evhttp_method_may_have_body_(evcon, req->type)) {
  evhttp_connection_done(evcon);
  return;
 }
 evcon->state = EVCON_READING_BODY;
 xfer_enc = evhttp_find_header(req->input_headers, "Transfer-Encoding");
 if (xfer_enc != ((void*)0) && evutil_ascii_strcasecmp(xfer_enc, "chunked") == 0) {
  req->chunked = 1;
  req->ntoread = -1;
 } else {
  if (evhttp_get_body_length(req) == -1) {
   evhttp_connection_fail_(evcon, EVREQ_HTTP_INVALID_HEADER);
   return;
  }
  if (req->kind == EVHTTP_REQUEST && req->ntoread < 1) {


   evhttp_connection_done(evcon);
   return;
  }
 }


 switch (evhttp_have_expect(req, 1)) {
  case 130:






    if (req->ntoread > 0) {

     if ((req->evcon->max_body_size <= EV_INT64_MAX) &&
      (ev_uint64_t)req->ntoread > req->evcon->max_body_size) {
      evhttp_lingering_fail(evcon, req);
      return;
     }
    }
    if (!evbuffer_get_length(bufferevent_get_input(evcon->bufev)))
     evhttp_send_continue(evcon, req);
   break;
  case 128:
   evhttp_send_error(req, HTTP_EXPECTATIONFAILED, ((void*)0));
   return;
  case 129: break;
 }

 evhttp_read_body(evcon, req);

}
