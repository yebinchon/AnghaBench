
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum http_parser_type { ____Placeholder_http_parser_type } http_parser_type ;


 int http_parser_init (int *,int) ;
 int memset (int *,int ,int) ;
 int messages ;
 scalar_t__ num_messages ;
 int parser ;

void
parser_init (enum http_parser_type type)
{
  num_messages = 0;
  http_parser_init(&parser, type);
  memset(&messages, 0, sizeof messages);
}
