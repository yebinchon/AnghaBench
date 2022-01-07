
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evkeyvalq {struct evkeyval* tqh_first; } ;
struct TYPE_2__ {struct evkeyval* tqe_next; } ;
struct evkeyval {char const* key; char* value; TYPE_1__ next; } ;
struct evhttp_request {int dummy; } ;
struct evbuffer {int dummy; } ;
typedef int cbuf ;
 scalar_t__ evbuffer_get_length (struct evbuffer*) ;
 int evbuffer_remove (struct evbuffer*,char*,int) ;
 int evhttp_request_get_command (struct evhttp_request*) ;
 struct evbuffer* evhttp_request_get_input_buffer (struct evhttp_request*) ;
 struct evkeyvalq* evhttp_request_get_input_headers (struct evhttp_request*) ;
 char* evhttp_request_get_uri (struct evhttp_request*) ;
 int evhttp_send_reply (struct evhttp_request*,int,char*,int *) ;
 int fwrite (char*,int,int,int ) ;
 int printf (char*,char const*,char*) ;
 int puts (char*) ;
 int stdout ;

__attribute__((used)) static void
dump_request_cb(struct evhttp_request *req, void *arg)
{
 const char *cmdtype;
 struct evkeyvalq *headers;
 struct evkeyval *header;
 struct evbuffer *buf;

 switch (evhttp_request_get_command(req)) {
 case 134: cmdtype = "GET"; break;
 case 130: cmdtype = "POST"; break;
 case 133: cmdtype = "HEAD"; break;
 case 129: cmdtype = "PUT"; break;
 case 135: cmdtype = "DELETE"; break;
 case 132: cmdtype = "OPTIONS"; break;
 case 128: cmdtype = "TRACE"; break;
 case 136: cmdtype = "CONNECT"; break;
 case 131: cmdtype = "PATCH"; break;
 default: cmdtype = "unknown"; break;
 }

 printf("Received a %s request for %s\nHeaders:\n",
     cmdtype, evhttp_request_get_uri(req));

 headers = evhttp_request_get_input_headers(req);
 for (header = headers->tqh_first; header;
     header = header->next.tqe_next) {
  printf("  %s: %s\n", header->key, header->value);
 }

 buf = evhttp_request_get_input_buffer(req);
 puts("Input data: <<<");
 while (evbuffer_get_length(buf)) {
  int n;
  char cbuf[128];
  n = evbuffer_remove(buf, cbuf, sizeof(cbuf));
  if (n > 0)
   (void) fwrite(cbuf, 1, n, stdout);
 }
 puts(">>>");

 evhttp_send_reply(req, 200, "OK", ((void*)0));
}
