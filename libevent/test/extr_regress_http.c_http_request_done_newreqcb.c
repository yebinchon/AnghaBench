
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_newreqcb_test_state {int connections_done; int connections_good; } ;
struct evhttp_request {int dummy; } ;


 scalar_t__ HTTP_OK ;
 scalar_t__ evhttp_request_get_response_code (struct evhttp_request*) ;
 int evhttp_request_set_error_cb (struct evhttp_request*,int *) ;
 int http_newreqcb_test_state_check (struct http_newreqcb_test_state*) ;

__attribute__((used)) static void
http_request_done_newreqcb(struct evhttp_request *req, void *arg)
{
 struct http_newreqcb_test_state* state = arg;
 if (req && evhttp_request_get_response_code(req) == HTTP_OK) {
  ++state->connections_good;
  evhttp_request_set_error_cb(req, ((void*)0));
 }
 ++state->connections_done;

 http_newreqcb_test_state_check(state);
}
