
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_parser_url {int port; } ;


 int abort () ;
 int fprintf (int ,char*,int) ;
 int http_parser_parse_url (char*,int,int ,struct http_parser_url*) ;
 int http_parser_url_init (struct http_parser_url*) ;
 int stderr ;

void
test_no_overflow_parse_url (void)
{
  int rv;
  struct http_parser_url u;

  http_parser_url_init(&u);
  rv = http_parser_parse_url("http://example.com:8001", 22, 0, &u);

  if (rv != 0) {
    fprintf(stderr,
            "\n*** test_no_overflow_parse_url invalid return value=%d\n",
            rv);
    abort();
  }

  if (u.port != 800) {
    fprintf(stderr,
            "\n*** test_no_overflow_parse_url invalid port number=%d\n",
            u.port);
    abort();
  }
}
