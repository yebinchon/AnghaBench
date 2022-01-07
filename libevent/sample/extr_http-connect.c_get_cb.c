
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
typedef struct evhttp_request evhttp_connection ;
struct evbuffer {int dummy; } ;
typedef int ev_ssize_t ;


 int VERIFY (struct evhttp_request*) ;
 int evbuffer_drain (struct evbuffer*,int ) ;
 int evbuffer_get_length (struct evbuffer*) ;
 int evbuffer_pullup (struct evbuffer*,int ) ;
 struct evhttp_request* evhttp_request_get_connection (struct evhttp_request*) ;
 struct evbuffer* evhttp_request_get_input_buffer (struct evhttp_request*) ;
 int fwrite (int ,int ,int,int ) ;
 int stdout ;

__attribute__((used)) static void get_cb(struct evhttp_request *req, void *arg)
{
 ev_ssize_t len;
 struct evbuffer *evbuf;
 struct evhttp_connection *evcon;

 VERIFY(req);
 evcon = evhttp_request_get_connection(req);
 VERIFY(evcon);

 evbuf = evhttp_request_get_input_buffer(req);
 len = evbuffer_get_length(evbuf);
 fwrite(evbuffer_pullup(evbuf, len), len, 1, stdout);
 evbuffer_drain(evbuf, len);
}
