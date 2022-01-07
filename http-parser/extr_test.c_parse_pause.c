
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int http_parser_settings ;


 int * current_pause_parser ;
 int currently_parsing_eof ;
 size_t http_parser_execute (int *,int *,char const*,size_t) ;
 int parser ;
 int settings_pause ;

size_t parse_pause (const char *buf, size_t len)
{
  size_t nparsed;
  http_parser_settings s = settings_pause;

  currently_parsing_eof = (len == 0);
  current_pause_parser = &s;
  nparsed = http_parser_execute(&parser, current_pause_parser, buf, len);
  return nparsed;
}
