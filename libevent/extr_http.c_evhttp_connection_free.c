
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
struct evhttp_connection {int fd; struct evhttp_connection* address; struct evhttp_connection* bind_address; int * bufev; int read_more_deferred_cb; int retry_ev; struct evhttp* http_server; int requests; int closecb_arg; int (* closecb ) (struct evhttp_connection*,int ) ;} ;
struct evhttp {int connections; } ;


 int BEV_OPT_CLOSE_ON_FREE ;
 int EVUTIL_SHUT_WR ;
 struct evhttp_request* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct evhttp_connection*,int ) ;
 int bufferevent_free (int *) ;
 int bufferevent_get_options_ (int *) ;
 int bufferevent_getfd (int *) ;
 int event_debug_unassign (int *) ;
 int event_deferred_cb_cancel_ (int ,int *) ;
 int event_del (int *) ;
 scalar_t__ event_initialized (int *) ;
 scalar_t__ evhttp_connected (struct evhttp_connection*) ;
 int evhttp_request_free_ (struct evhttp_connection*,struct evhttp_request*) ;
 int evutil_closesocket (int) ;
 int get_deferred_queue (struct evhttp_connection*) ;
 int mm_free (struct evhttp_connection*) ;
 int next ;
 int shutdown (int,int ) ;
 int stub1 (struct evhttp_connection*,int ) ;

void
evhttp_connection_free(struct evhttp_connection *evcon)
{
 struct evhttp_request *req;
 int need_close = 0;


 if (evcon->fd != -1) {
  if (evhttp_connected(evcon) && evcon->closecb != ((void*)0))
   (*evcon->closecb)(evcon, evcon->closecb_arg);
 }






 while ((req = TAILQ_FIRST(&evcon->requests)) != ((void*)0)) {
  evhttp_request_free_(evcon, req);
 }

 if (evcon->http_server != ((void*)0)) {
  struct evhttp *http = evcon->http_server;
  TAILQ_REMOVE(&http->connections, evcon, next);
 }

 if (event_initialized(&evcon->retry_ev)) {
  event_del(&evcon->retry_ev);
  event_debug_unassign(&evcon->retry_ev);
 }

 event_deferred_cb_cancel_(get_deferred_queue(evcon),
     &evcon->read_more_deferred_cb);

 if (evcon->bufev != ((void*)0)) {
  need_close =
   !(bufferevent_get_options_(evcon->bufev) & BEV_OPT_CLOSE_ON_FREE);
  if (evcon->fd == -1)
   evcon->fd = bufferevent_getfd(evcon->bufev);

  bufferevent_free(evcon->bufev);
 }

 if (evcon->fd != -1) {
  shutdown(evcon->fd, EVUTIL_SHUT_WR);
  if (need_close)
   evutil_closesocket(evcon->fd);
 }

 if (evcon->bind_address != ((void*)0))
  mm_free(evcon->bind_address);

 if (evcon->address != ((void*)0))
  mm_free(evcon->address);

 mm_free(evcon);
}
