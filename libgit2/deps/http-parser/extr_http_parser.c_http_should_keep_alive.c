
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ http_major; scalar_t__ http_minor; int flags; } ;
typedef TYPE_1__ http_parser ;


 int F_CONNECTION_CLOSE ;
 int F_CONNECTION_KEEP_ALIVE ;
 int http_message_needs_eof (TYPE_1__ const*) ;

int
http_should_keep_alive (const http_parser *parser)
{
  if (parser->http_major > 0 && parser->http_minor > 0) {

    if (parser->flags & F_CONNECTION_CLOSE) {
      return 0;
    }
  } else {

    if (!(parser->flags & F_CONNECTION_KEEP_ALIVE)) {
      return 0;
    }
  }

  return !http_message_needs_eof(parser);
}
