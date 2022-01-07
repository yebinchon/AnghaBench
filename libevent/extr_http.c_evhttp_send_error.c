
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int evcon; } ;
struct evbuffer {int dummy; } ;


 int ERR_FORMAT ;
 int evbuffer_add_printf (struct evbuffer*,int ,int,char const*,char const*) ;
 int evbuffer_free (struct evbuffer*) ;
 struct evbuffer* evbuffer_new () ;
 int evhttp_connection_free (int ) ;
 int evhttp_response_code_ (struct evhttp_request*,int,char const*) ;
 char* evhttp_response_phrase_internal (int) ;
 int evhttp_send_page_ (struct evhttp_request*,struct evbuffer*) ;

void
evhttp_send_error(struct evhttp_request *req, int error, const char *reason)
{







 struct evbuffer *buf = evbuffer_new();
 if (buf == ((void*)0)) {

  evhttp_connection_free(req->evcon);
  return;
 }
 if (reason == ((void*)0)) {
  reason = evhttp_response_phrase_internal(error);
 }

 evhttp_response_code_(req, error, reason);

 evbuffer_add_printf(buf, "<HTML><HEAD>\n" "<TITLE>%d %s</TITLE>\n" "</HEAD><BODY>\n" "<H1>%s</H1>\n" "</BODY></HTML>\n", error, reason, reason);

 evhttp_send_page_(req, buf);

 evbuffer_free(buf);

}
