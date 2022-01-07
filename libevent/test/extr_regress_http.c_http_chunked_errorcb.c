
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
struct bufferevent {int dummy; } ;
typedef enum message_read_status { ____Placeholder_message_read_status } message_read_status ;


 int ALL_DATA_READ ;
 short BEV_EVENT_CONNECTED ;
 short BEV_EVENT_EOF ;
 int EVBUFFER_EOL_CRLF ;
 int bufferevent_get_input (struct bufferevent*) ;
 int evbuffer_drain (int ,int) ;
 scalar_t__ evbuffer_pullup (int ,int) ;
 char* evbuffer_readln (int ,int *,int ) ;
 int event_base_loopexit (void*,int *) ;
 char* evhttp_find_header (int ,char*) ;
 int evhttp_parse_firstline_ (struct evhttp_request*,int ) ;
 int evhttp_parse_headers_ (struct evhttp_request*,int ) ;
 int evhttp_request_free (struct evhttp_request*) ;
 int evhttp_request_get_input_headers (struct evhttp_request*) ;
 struct evhttp_request* evhttp_request_new (int *,int *) ;
 int free (void*) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int test_ok ;

__attribute__((used)) static void
http_chunked_errorcb(struct bufferevent *bev, short what, void *arg)
{
 struct evhttp_request *req = ((void*)0);


 if (what & BEV_EVENT_CONNECTED)
  return;

 if (!test_ok)
  goto out;

 test_ok = -1;

 if ((what & BEV_EVENT_EOF) != 0) {
  const char *header;
  enum message_read_status done;
  req = evhttp_request_new(((void*)0), ((void*)0));


  done = evhttp_parse_firstline_(req, bufferevent_get_input(bev));
  if (done != ALL_DATA_READ)
   goto out;

  done = evhttp_parse_headers_(req, bufferevent_get_input(bev));
  if (done != ALL_DATA_READ)
   goto out;

  header = evhttp_find_header(evhttp_request_get_input_headers(req), "Transfer-Encoding");
  if (header == ((void*)0) || strcmp(header, "chunked"))
   goto out;

  header = evhttp_find_header(evhttp_request_get_input_headers(req), "Connection");
  if (header == ((void*)0) || strcmp(header, "close"))
   goto out;

  header = evbuffer_readln(bufferevent_get_input(bev), ((void*)0), EVBUFFER_EOL_CRLF);
  if (header == ((void*)0))
   goto out;

  if (strcmp(header, "d")) {
   free((void*)header);
   goto out;
  }
  free((void*)header);

  if (strncmp((char *)evbuffer_pullup(bufferevent_get_input(bev), 13),
   "This is funny", 13))
   goto out;

  evbuffer_drain(bufferevent_get_input(bev), 13 + 2);

  header = evbuffer_readln(bufferevent_get_input(bev), ((void*)0), EVBUFFER_EOL_CRLF);
  if (header == ((void*)0))
   goto out;

  if (strcmp(header, "12"))
   goto out;
  free((char *)header);

  if (strncmp((char *)evbuffer_pullup(bufferevent_get_input(bev), 18),
   "but not hilarious.", 18))
   goto out;

  evbuffer_drain(bufferevent_get_input(bev), 18 + 2);

  header = evbuffer_readln(bufferevent_get_input(bev), ((void*)0), EVBUFFER_EOL_CRLF);
  if (header == ((void*)0))
   goto out;

  if (strcmp(header, "8")) {
   free((void*)header);
   goto out;
  }
  free((char *)header);

  if (strncmp((char *)evbuffer_pullup(bufferevent_get_input(bev), 8),
   "bwv 1052.", 8))
   goto out;

  evbuffer_drain(bufferevent_get_input(bev), 8 + 2);

  header = evbuffer_readln(bufferevent_get_input(bev), ((void*)0), EVBUFFER_EOL_CRLF);
  if (header == ((void*)0))
   goto out;

  if (strcmp(header, "0")) {
   free((void*)header);
   goto out;
  }
  free((void *)header);

  test_ok = 2;
 }

out:
 if (req)
  evhttp_request_free(req);

 event_base_loopexit(arg, ((void*)0));
}
