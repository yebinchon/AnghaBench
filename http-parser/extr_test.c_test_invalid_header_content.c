
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int http_parser ;


 scalar_t__ HPE_INVALID_HEADER_TOKEN ;
 scalar_t__ HTTP_PARSER_ERRNO (int *) ;
 int HTTP_REQUEST ;
 int HTTP_RESPONSE ;
 int abort () ;
 int assert (int) ;
 int fprintf (int ,char*) ;
 size_t http_parser_execute (int *,int *,char const*,size_t) ;
 int http_parser_init (int *,int ) ;
 int settings_null ;
 int stderr ;
 size_t strlen (char const*) ;

void
test_invalid_header_content (int req, const char* str)
{
  http_parser parser;
  http_parser_init(&parser, req ? HTTP_REQUEST : HTTP_RESPONSE);
  size_t parsed;
  const char *buf;
  buf = req ?
    "GET / HTTP/1.1\r\n" :
    "HTTP/1.1 200 OK\r\n";
  parsed = http_parser_execute(&parser, &settings_null, buf, strlen(buf));
  assert(parsed == strlen(buf));

  buf = str;
  size_t buflen = strlen(buf);

  parsed = http_parser_execute(&parser, &settings_null, buf, buflen);
  if (parsed != buflen) {
    assert(HTTP_PARSER_ERRNO(&parser) == HPE_INVALID_HEADER_TOKEN);
    return;
  }

  fprintf(stderr,
          "\n*** Error expected but none in invalid header content test ***\n");
  abort();
}
