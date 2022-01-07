
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {scalar_t__ kind; } ;
struct evhttp_connection {scalar_t__ state; int requests; } ;


 scalar_t__ EVCON_IDLE ;
 scalar_t__ EVCON_WRITING ;
 scalar_t__ EVHTTP_REQUEST ;
 int EVUTIL_ASSERT (int) ;
 struct evhttp_request* TAILQ_FIRST (int *) ;
 int evhttp_connection_stop_detectclose (struct evhttp_connection*) ;
 int evhttp_make_header (struct evhttp_connection*,struct evhttp_request*) ;
 int evhttp_write_buffer (struct evhttp_connection*,int ,int *) ;
 int evhttp_write_connectioncb ;

__attribute__((used)) static void
evhttp_request_dispatch(struct evhttp_connection* evcon)
{
 struct evhttp_request *req = TAILQ_FIRST(&evcon->requests);


 if (req == ((void*)0))
  return;

 EVUTIL_ASSERT(req->kind == EVHTTP_REQUEST);


 evhttp_connection_stop_detectclose(evcon);


 EVUTIL_ASSERT(evcon->state == EVCON_IDLE);

 evcon->state = EVCON_WRITING;


 evhttp_make_header(evcon, req);

 evhttp_write_buffer(evcon, evhttp_write_connectioncb, ((void*)0));
}
