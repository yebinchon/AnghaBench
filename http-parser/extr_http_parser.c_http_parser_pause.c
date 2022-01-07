
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int nread; } ;
typedef TYPE_1__ http_parser ;


 scalar_t__ HPE_OK ;
 scalar_t__ HPE_PAUSED ;
 scalar_t__ HTTP_PARSER_ERRNO (TYPE_1__*) ;
 int SET_ERRNO (scalar_t__) ;
 int assert (int) ;

void
http_parser_pause(http_parser *parser, int paused) {




  if (HTTP_PARSER_ERRNO(parser) == HPE_OK ||
      HTTP_PARSER_ERRNO(parser) == HPE_PAUSED) {
    uint32_t nread = parser->nread;
    SET_ERRNO((paused) ? HPE_PAUSED : HPE_OK);
  } else {
    assert(0 && "Attempting to pause parser in error state");
  }
}
