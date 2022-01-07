
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_newreqcb_test_state {int connections_noticed; int connections_throttled; } ;
struct evhttp_request {int dummy; } ;


 int http_newreqcb_test_state_check (struct http_newreqcb_test_state*) ;

__attribute__((used)) static int
http_newreqcb(struct evhttp_request* req, void *arg)
{
 struct http_newreqcb_test_state* state = arg;
 ++state->connections_noticed;
 http_newreqcb_test_state_check(state);
 if (1 == state->connections_noticed % 7) {
  state->connections_throttled++;
  return -1;
 }
 return 0;
}
