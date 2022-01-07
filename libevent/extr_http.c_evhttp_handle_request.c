
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evhttp_request {int type; TYPE_1__* evcon; int * uri; int response_code; scalar_t__ userdone; } ;
struct evhttp_cb {int cbarg; int (* cb ) (struct evhttp_request*,int ) ;} ;
struct evhttp {int allowed_methods; int gencbarg; int (* gencb ) (struct evhttp_request*,int ) ;int callbacks; } ;
struct evbuffer {int dummy; } ;
struct TYPE_2__ {int bufev; } ;


 int ERR_FORMAT ;
 int EV_READ ;
 int HTTP_NOTFOUND ;
 int HTTP_NOTIMPLEMENTED ;
 int bufferevent_disable (int ,int ) ;
 int evbuffer_add_printf (struct evbuffer*,int ,char*) ;
 int evbuffer_free (struct evbuffer*) ;
 struct evbuffer* evbuffer_new () ;
 int event_debug (char*) ;
 int evhttp_connection_free (TYPE_1__*) ;
 struct evhttp_cb* evhttp_dispatch_callback (int *,struct evhttp_request*) ;
 int evhttp_find_vhost (struct evhttp*,struct evhttp**,char const*) ;
 char* evhttp_htmlescape (int *) ;
 char* evhttp_request_get_host (struct evhttp_request*) ;
 int evhttp_response_code_ (struct evhttp_request*,int ,char*) ;
 int evhttp_send_error (struct evhttp_request*,int ,int *) ;
 int evhttp_send_page_ (struct evhttp_request*,struct evbuffer*) ;
 int mm_free (char*) ;
 int stub1 (struct evhttp_request*,int ) ;
 int stub2 (struct evhttp_request*,int ) ;

__attribute__((used)) static void
evhttp_handle_request(struct evhttp_request *req, void *arg)
{
 struct evhttp *http = arg;
 struct evhttp_cb *cb = ((void*)0);
 const char *hostname;


 req->userdone = 0;

 bufferevent_disable(req->evcon->bufev, EV_READ);

 if (req->uri == ((void*)0)) {
  evhttp_send_error(req, req->response_code, ((void*)0));
  return;
 }

 if ((http->allowed_methods & req->type) == 0) {
  event_debug(("Rejecting disallowed method %x (allowed: %x)\n",
   (unsigned)req->type, (unsigned)http->allowed_methods));
  evhttp_send_error(req, HTTP_NOTIMPLEMENTED, ((void*)0));
  return;
 }


 hostname = evhttp_request_get_host(req);
 if (hostname != ((void*)0)) {
  evhttp_find_vhost(http, &http, hostname);
 }

 if ((cb = evhttp_dispatch_callback(&http->callbacks, req)) != ((void*)0)) {
  (*cb->cb)(req, cb->cbarg);
  return;
 }


 if (http->gencb) {
  (*http->gencb)(req, http->gencbarg);
  return;
 } else {
  char *escaped_html;
  struct evbuffer *buf;

  if ((escaped_html = evhttp_htmlescape(req->uri)) == ((void*)0)) {
   evhttp_connection_free(req->evcon);
   return;
  }

  if ((buf = evbuffer_new()) == ((void*)0)) {
   mm_free(escaped_html);
   evhttp_connection_free(req->evcon);
   return;
  }

  evhttp_response_code_(req, HTTP_NOTFOUND, "Not Found");

  evbuffer_add_printf(buf, "<html><head>" "<title>404 Not Found</title>" "</head><body>" "<h1>Not Found</h1>" "<p>The requested URL %s was not found on this server.</p>" "</body></html>\n", escaped_html);

  mm_free(escaped_html);

  evhttp_send_page_(req, buf);

  evbuffer_free(buf);

 }
}
