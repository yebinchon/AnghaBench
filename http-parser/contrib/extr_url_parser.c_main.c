
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_parser_url {int dummy; } ;


 int dump_url (char*,struct http_parser_url*) ;
 int http_parser_parse_url (char*,int,int,struct http_parser_url*) ;
 int http_parser_url_init (struct http_parser_url*) ;
 int printf (char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;

int main(int argc, char ** argv) {
  struct http_parser_url u;
  int len, connect, result;

  if (argc != 3) {
    printf("Syntax : %s connect|get url\n", argv[0]);
    return 1;
  }
  len = strlen(argv[2]);
  connect = strcmp("connect", argv[1]) == 0 ? 1 : 0;
  printf("Parsing %s, connect %d\n", argv[2], connect);

  http_parser_url_init(&u);
  result = http_parser_parse_url(argv[2], len, connect, &u);
  if (result != 0) {
    printf("Parse error : %d\n", result);
    return result;
  }
  printf("Parse ok, result : \n");
  dump_url(argv[2], &u);
  return 0;
}
