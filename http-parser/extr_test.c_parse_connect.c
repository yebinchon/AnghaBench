
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int currently_parsing_eof ;
 size_t http_parser_execute (int *,int *,char const*,size_t) ;
 int parser ;
 int settings_connect ;

size_t parse_connect (const char *buf, size_t len)
{
  size_t nparsed;
  currently_parsing_eof = (len == 0);
  nparsed = http_parser_execute(&parser, &settings_connect, buf, len);
  return nparsed;
}
