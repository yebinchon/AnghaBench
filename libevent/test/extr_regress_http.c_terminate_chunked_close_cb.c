
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct terminate_state {int gotclosecb; int base; int * req; scalar_t__ oneshot; } ;
struct evhttp_connection {int dummy; } ;


 int event_base_loopexit (int ,int *) ;
 int evhttp_request_free (int *) ;

__attribute__((used)) static void
terminate_chunked_close_cb(struct evhttp_connection *evcon, void *arg)
{
 struct terminate_state *state = arg;
 state->gotclosecb = 1;


 if (state->oneshot) {
  evhttp_request_free(state->req);
  state->req = ((void*)0);
  event_base_loopexit(state->base,((void*)0));
 }
}
