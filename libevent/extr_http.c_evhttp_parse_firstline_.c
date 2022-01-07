
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evhttp_request {size_t headers_size; int kind; TYPE_1__* evcon; } ;
struct evbuffer {int dummy; } ;
typedef enum message_read_status { ____Placeholder_message_read_status } message_read_status ;
struct TYPE_2__ {size_t max_headers_size; } ;


 int ALL_DATA_READ ;
 int DATA_CORRUPTED ;
 int DATA_TOO_LONG ;
 int EVBUFFER_EOL_CRLF ;


 int MORE_DATA_EXPECTED ;
 size_t evbuffer_get_length (struct evbuffer*) ;
 char* evbuffer_readln (struct evbuffer*,size_t*,int ) ;
 int evhttp_parse_request_line (struct evhttp_request*,char*,size_t) ;
 int evhttp_parse_response_line (struct evhttp_request*,char*) ;
 int mm_free (char*) ;

enum message_read_status
evhttp_parse_firstline_(struct evhttp_request *req, struct evbuffer *buffer)
{
 char *line;
 enum message_read_status status = ALL_DATA_READ;

 size_t len;

 line = evbuffer_readln(buffer, &len, EVBUFFER_EOL_CRLF);
 if (line == ((void*)0)) {
  if (req->evcon != ((void*)0) &&
      evbuffer_get_length(buffer) > req->evcon->max_headers_size)
   return (DATA_TOO_LONG);
  else
   return (MORE_DATA_EXPECTED);
 }

 if (req->evcon != ((void*)0) && len > req->evcon->max_headers_size) {
  mm_free(line);
  return (DATA_TOO_LONG);
 }

 req->headers_size = len;

 switch (req->kind) {
 case 129:
  if (evhttp_parse_request_line(req, line, len) == -1)
   status = DATA_CORRUPTED;
  break;
 case 128:
  if (evhttp_parse_response_line(req, line) == -1)
   status = DATA_CORRUPTED;
  break;
 default:
  status = DATA_CORRUPTED;
 }

 mm_free(line);
 return (status);
}
