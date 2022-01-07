
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int http_parser ;


 int HTTP_REQUEST ;
 int HTTP_RESPONSE ;
 int abort () ;
 int fprintf (int ,char*,char*,unsigned long) ;
 size_t http_parser_execute (int *,int *,char*,size_t) ;
 int http_parser_init (int *,int ) ;
 int settings_null ;
 size_t sprintf (char*,char*,char*,unsigned long) ;
 int stderr ;

void
test_no_overflow_long_body (int req, size_t length)
{
  http_parser parser;
  http_parser_init(&parser, req ? HTTP_REQUEST : HTTP_RESPONSE);
  size_t parsed;
  size_t i;
  char buf1[3000];
  size_t buf1len = sprintf(buf1, "%s\r\nConnection: Keep-Alive\r\nContent-Length: %lu\r\n\r\n",
      req ? "POST / HTTP/1.0" : "HTTP/1.0 200 OK", (unsigned long)length);
  parsed = http_parser_execute(&parser, &settings_null, buf1, buf1len);
  if (parsed != buf1len)
    goto err;

  for (i = 0; i < length; i++) {
    char foo = 'a';
    parsed = http_parser_execute(&parser, &settings_null, &foo, 1);
    if (parsed != 1)
      goto err;
  }

  parsed = http_parser_execute(&parser, &settings_null, buf1, buf1len);
  if (parsed != buf1len) goto err;
  return;

 err:
  fprintf(stderr,
          "\n*** error in test_no_overflow_long_body %s of length %lu ***\n",
          req ? "REQUEST" : "RESPONSE",
          (unsigned long)length);
  abort();
}
