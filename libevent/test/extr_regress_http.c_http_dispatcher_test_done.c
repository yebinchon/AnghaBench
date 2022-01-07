
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
struct event_base {int dummy; } ;


 scalar_t__ HTTP_OK ;
 scalar_t__ evbuffer_datacmp (int ,char const*) ;
 scalar_t__ evbuffer_get_length (int ) ;
 int event_base_loopexit (struct event_base*,int *) ;
 int * evhttp_find_header (int ,char*) ;
 int evhttp_request_get_input_buffer (struct evhttp_request*) ;
 int evhttp_request_get_input_headers (struct evhttp_request*) ;
 scalar_t__ evhttp_request_get_response_code (struct evhttp_request*) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 scalar_t__ strlen (char const*) ;
 int test_ok ;

__attribute__((used)) static void
http_dispatcher_test_done(struct evhttp_request *req, void *arg)
{
 struct event_base *base = arg;
 const char *what = "DISPATCHER_TEST";

 if (!req) {
  fprintf(stderr, "FAILED\n");
  exit(1);
 }

 if (evhttp_request_get_response_code(req) != HTTP_OK) {
  fprintf(stderr, "FAILED\n");
  exit(1);
 }

 if (evhttp_find_header(evhttp_request_get_input_headers(req), "Content-Type") == ((void*)0)) {
  fprintf(stderr, "FAILED (content type)\n");
  exit(1);
 }

 if (evbuffer_get_length(evhttp_request_get_input_buffer(req)) != strlen(what)) {
  fprintf(stderr, "FAILED (length %lu vs %lu)\n",
      (unsigned long)evbuffer_get_length(evhttp_request_get_input_buffer(req)), (unsigned long)strlen(what));
  exit(1);
 }

 if (evbuffer_datacmp(evhttp_request_get_input_buffer(req), what) != 0) {
  fprintf(stderr, "FAILED (data)\n");
  exit(1);
 }

 test_ok = 1;
 event_base_loopexit(base, ((void*)0));
}
