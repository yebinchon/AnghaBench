
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int userdone; scalar_t__ chunked; struct evhttp_connection* evcon; } ;
struct evhttp_connection {int * cb_arg; int (* cb ) (struct evhttp_connection*,int *) ;int bufev; } ;
struct evbuffer {int dummy; } ;


 struct evbuffer* bufferevent_get_output (int ) ;
 int evbuffer_add (struct evbuffer*,char*,int) ;
 scalar_t__ evbuffer_get_length (struct evbuffer*) ;
 int evhttp_request_free (struct evhttp_request*) ;
 int evhttp_send_done (struct evhttp_connection*,int *) ;
 int evhttp_write_buffer (struct evhttp_connection*,int (*) (struct evhttp_connection*,int *),int *) ;

void
evhttp_send_reply_end(struct evhttp_request *req)
{
 struct evhttp_connection *evcon = req->evcon;
 struct evbuffer *output;

 if (evcon == ((void*)0)) {
  evhttp_request_free(req);
  return;
 }

 output = bufferevent_get_output(evcon->bufev);


 req->userdone = 1;

 if (req->chunked) {
  evbuffer_add(output, "0\r\n\r\n", 5);
  evhttp_write_buffer(req->evcon, evhttp_send_done, ((void*)0));
  req->chunked = 0;
 } else if (evbuffer_get_length(output) == 0) {

  evhttp_send_done(evcon, ((void*)0));
 } else {

  evcon->cb = evhttp_send_done;
  evcon->cb_arg = ((void*)0);
 }
}
