
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evhttp_request {scalar_t__ ntoread; size_t body_size; int flags; struct evbuffer* input_buffer; int cb_arg; int (* chunk_cb ) (struct evhttp_request*,int ) ;TYPE_1__* evcon; scalar_t__ chunked; } ;
struct evhttp_connection {int bufev; int state; } ;
struct evbuffer {int dummy; } ;
struct TYPE_2__ {size_t max_body_size; } ;





 int EVCON_READING_TRAILER ;
 int EVHTTP_REQ_DEFER_FREE ;
 int EVHTTP_REQ_NEEDS_FREE ;
 int EVREQ_HTTP_DATA_TOO_LONG ;
 int EVREQ_HTTP_INVALID_HEADER ;
 int EV_READ ;


 int bufferevent_disable (int ,int ) ;
 struct evbuffer* bufferevent_get_input (int ) ;
 int evbuffer_add_buffer (struct evbuffer*,struct evbuffer*) ;
 int evbuffer_drain (struct evbuffer*,size_t) ;
 size_t evbuffer_get_length (struct evbuffer*) ;
 int evbuffer_remove_buffer (struct evbuffer*,struct evbuffer*,size_t) ;
 int evhttp_connection_done (struct evhttp_connection*) ;
 int evhttp_connection_fail_ (struct evhttp_connection*,int ) ;
 int evhttp_handle_chunked_read (struct evhttp_request*,struct evbuffer*) ;
 int evhttp_lingering_fail (struct evhttp_connection*,struct evhttp_request*) ;
 int evhttp_read_trailer (struct evhttp_connection*,struct evhttp_request*) ;
 int evhttp_request_free_auto (struct evhttp_request*) ;
 int stub1 (struct evhttp_request*,int ) ;

__attribute__((used)) static void
evhttp_read_body(struct evhttp_connection *evcon, struct evhttp_request *req)
{
 struct evbuffer *buf = bufferevent_get_input(evcon->bufev);

 if (req->chunked) {
  switch (evhttp_handle_chunked_read(req, buf)) {
  case 132:

   evcon->state = EVCON_READING_TRAILER;
   evhttp_read_trailer(evcon, req);
   return;
  case 131:
  case 130:

   evhttp_connection_fail_(evcon,
       EVREQ_HTTP_DATA_TOO_LONG);
   return;
  case 128:

   evhttp_request_free_auto(req);
   return;
  case 129:
  default:
   break;
  }
 } else if (req->ntoread < 0) {

  if ((size_t)(req->body_size + evbuffer_get_length(buf)) < req->body_size) {
   evhttp_connection_fail_(evcon, EVREQ_HTTP_INVALID_HEADER);
   return;
  }

  req->body_size += evbuffer_get_length(buf);
  evbuffer_add_buffer(req->input_buffer, buf);
 } else if (req->chunk_cb != ((void*)0) || evbuffer_get_length(buf) >= (size_t)req->ntoread) {



  size_t n = evbuffer_get_length(buf);

  if (n > (size_t) req->ntoread)
   n = (size_t) req->ntoread;
  req->ntoread -= n;
  req->body_size += n;
  evbuffer_remove_buffer(buf, req->input_buffer, n);
 }

 if (req->body_size > req->evcon->max_body_size ||
     (!req->chunked && req->ntoread >= 0 &&
  (size_t)req->ntoread > req->evcon->max_body_size)) {



  evhttp_lingering_fail(evcon, req);
  return;
 }

 if (evbuffer_get_length(req->input_buffer) > 0 && req->chunk_cb != ((void*)0)) {
  req->flags |= EVHTTP_REQ_DEFER_FREE;
  (*req->chunk_cb)(req, req->cb_arg);
  req->flags &= ~EVHTTP_REQ_DEFER_FREE;
  evbuffer_drain(req->input_buffer,
      evbuffer_get_length(req->input_buffer));
  if ((req->flags & EVHTTP_REQ_NEEDS_FREE) != 0) {
   evhttp_request_free_auto(req);
   return;
  }
 }

 if (!req->ntoread) {
  bufferevent_disable(evcon->bufev, EV_READ);

  evhttp_connection_done(evcon);
  return;
 }
}
