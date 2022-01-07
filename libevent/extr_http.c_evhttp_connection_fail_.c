
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {void (* error_cb ) (int,void*) ;void (* cb ) (struct evhttp_request*,void*) ;void* cb_arg; } ;
struct evhttp_connection {int flags; int requests; int bufev; } ;
typedef enum evhttp_request_error { ____Placeholder_evhttp_request_error } evhttp_request_error ;


 int EVHTTP_CON_INCOMING ;
 int EVREQ_HTTP_REQUEST_CANCEL ;
 int EVUTIL_ASSERT (int ) ;
 int EVUTIL_SET_SOCKET_ERROR (int const) ;
 int EVUTIL_SOCKET_ERROR () ;
 int EV_READ ;
 int EV_WRITE ;
 struct evhttp_request* TAILQ_FIRST (int *) ;
 int bufferevent_disable (int ,int) ;
 int evhttp_connection_connect_ (struct evhttp_connection*) ;
 int evhttp_connection_free (struct evhttp_connection*) ;
 int evhttp_connection_incoming_fail (struct evhttp_request*,int) ;
 int evhttp_connection_reset_ (struct evhttp_connection*) ;
 int evhttp_request_free_ (struct evhttp_connection*,struct evhttp_request*) ;
 void stub1 (struct evhttp_request*,void*) ;

void
evhttp_connection_fail_(struct evhttp_connection *evcon,
    enum evhttp_request_error error)
{
 const int errsave = EVUTIL_SOCKET_ERROR();
 struct evhttp_request* req = TAILQ_FIRST(&evcon->requests);
 void (*cb)(struct evhttp_request *, void *);
 void *cb_arg;
 void (*error_cb)(enum evhttp_request_error, void *);
 void *error_cb_arg;
 EVUTIL_ASSERT(req != ((void*)0));

 bufferevent_disable(evcon->bufev, EV_READ|EV_WRITE);

 if (evcon->flags & EVHTTP_CON_INCOMING) {
  if (evhttp_connection_incoming_fail(req, error) == -1)
   evhttp_connection_free(evcon);
  return;
 }

 error_cb = req->error_cb;
 error_cb_arg = req->cb_arg;

 if (error != EVREQ_HTTP_REQUEST_CANCEL) {

  cb = req->cb;
  cb_arg = req->cb_arg;
 } else {
  cb = ((void*)0);
  cb_arg = ((void*)0);
 }





 evhttp_request_free_(evcon, req);


 evhttp_connection_reset_(evcon);


 if (TAILQ_FIRST(&evcon->requests) != ((void*)0))
  evhttp_connection_connect_(evcon);





 EVUTIL_SET_SOCKET_ERROR(errsave);


 if (error_cb != ((void*)0))
  error_cb(error, error_cb_arg);
 if (cb != ((void*)0))
  (*cb)(((void*)0), cb_arg);
}
