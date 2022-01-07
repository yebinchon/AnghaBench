
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
struct event_base {int dummy; } ;
struct bufferevent {int dummy; } ;
typedef enum message_read_status { ____Placeholder_message_read_status } message_read_status ;


 int ALL_DATA_READ ;
 char* BASIC_REQUEST_BODY ;
 int EV_READ ;
 int bufferevent_disable (struct bufferevent*,int ) ;
 int bufferevent_get_input (struct bufferevent*) ;
 scalar_t__ evbuffer_contains (int ,char const*) ;
 int event_base_loopexit (struct event_base*,int *) ;
 int * evhttp_find_header (int ,char*) ;
 int evhttp_parse_firstline_ (struct evhttp_request*,int ) ;
 int evhttp_parse_headers_ (struct evhttp_request*,int ) ;
 int evhttp_request_free (struct evhttp_request*) ;
 int evhttp_request_get_input_headers (struct evhttp_request*) ;
 struct evhttp_request* evhttp_request_new (int *,int *) ;
 int exit (int) ;
 struct event_base* exit_base ;
 int fprintf (int ,char*) ;
 int stderr ;
 int test_ok ;

__attribute__((used)) static void
http_readcb(struct bufferevent *bev, void *arg)
{
 const char *what = BASIC_REQUEST_BODY;
 struct event_base *my_base = arg;

 if (evbuffer_contains(bufferevent_get_input(bev), what)) {
  struct evhttp_request *req = evhttp_request_new(((void*)0), ((void*)0));
  enum message_read_status done;


  done = evhttp_parse_firstline_(req, bufferevent_get_input(bev));
  if (done != ALL_DATA_READ)
   goto out;

  done = evhttp_parse_headers_(req, bufferevent_get_input(bev));
  if (done != ALL_DATA_READ)
   goto out;

  if (done == 1 &&
      evhttp_find_header(evhttp_request_get_input_headers(req),
   "Content-Type") != ((void*)0))
   test_ok++;

  out:
  evhttp_request_free(req);
  bufferevent_disable(bev, EV_READ);
  if (exit_base)
   event_base_loopexit(exit_base, ((void*)0));
  else if (my_base)
   event_base_loopexit(my_base, ((void*)0));
  else {
   fprintf(stderr, "No way to exit loop!\n");
   exit(1);
  }
 }
}
