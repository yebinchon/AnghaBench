
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; } ;
typedef TYPE_1__ http_parser ;


 int HTTP_REQUEST ;
 int abort () ;
 int http_parser_init (TYPE_1__*,int ) ;
 int printf (char*) ;

void
test_preserve_data (void)
{
  char my_data[] = "application-specific data";
  http_parser parser;
  parser.data = my_data;
  http_parser_init(&parser, HTTP_REQUEST);
  if (parser.data != my_data) {
    printf("\n*** parser.data not preserved accross http_parser_init ***\n\n");
    abort();
  }
}
