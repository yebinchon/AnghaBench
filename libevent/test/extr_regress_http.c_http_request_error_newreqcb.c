
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_newreqcb_test_state {int connections_error; } ;
typedef enum evhttp_request_error { ____Placeholder_evhttp_request_error } evhttp_request_error ;


 int http_newreqcb_test_state_check (struct http_newreqcb_test_state*) ;

__attribute__((used)) static void
http_request_error_newreqcb(enum evhttp_request_error err, void *arg)
{
 struct http_newreqcb_test_state* state = arg;
 ++state->connections_error;

 http_newreqcb_test_state_check(state);
}
