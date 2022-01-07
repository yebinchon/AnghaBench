
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;


 scalar_t__ HTTP_OK ;
 int evbuffer_get_length (int ) ;
 scalar_t__ evbuffer_pullup (int ,int) ;
 int event_base_loopexit (void*,int *) ;
 int * evhttp_find_header (int ,char*) ;
 int evhttp_request_get_input_buffer (struct evhttp_request*) ;
 int evhttp_request_get_input_headers (struct evhttp_request*) ;
 scalar_t__ evhttp_request_get_response_code (struct evhttp_request*) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;
 scalar_t__ strncmp (char*,char*,int) ;
 int test_ok ;

__attribute__((used)) static void
http_chunked_request_done(struct evhttp_request *req, void *arg)
{
 if (evhttp_request_get_response_code(req) != HTTP_OK) {
  fprintf(stderr, "FAILED\n");
  exit(1);
 }

 if (evhttp_find_header(evhttp_request_get_input_headers(req),
  "Transfer-Encoding") == ((void*)0)) {
  fprintf(stderr, "FAILED\n");
  exit(1);
 }

 if (evbuffer_get_length(evhttp_request_get_input_buffer(req)) != 13 + 18 + 8) {
  fprintf(stderr, "FAILED\n");
  exit(1);
 }

 if (strncmp((char *)evbuffer_pullup(evhttp_request_get_input_buffer(req), 13 + 18 + 8),
  "This is funnybut not hilarious.bwv 1052",
  13 + 18 + 8)) {
  fprintf(stderr, "FAILED\n");
  exit(1);
 }

 test_ok = 1;
 event_base_loopexit(arg, ((void*)0));
}
