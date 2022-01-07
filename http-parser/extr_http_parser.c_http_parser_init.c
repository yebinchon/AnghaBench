
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int http_errno; int state; void* data; } ;
typedef TYPE_1__ http_parser ;
typedef enum http_parser_type { ____Placeholder_http_parser_type } http_parser_type ;


 int HPE_OK ;
 int HTTP_REQUEST ;
 int HTTP_RESPONSE ;
 int memset (TYPE_1__*,int ,int) ;
 int s_start_req ;
 int s_start_req_or_res ;
 int s_start_res ;

void
http_parser_init (http_parser *parser, enum http_parser_type t)
{
  void *data = parser->data;
  memset(parser, 0, sizeof(*parser));
  parser->data = data;
  parser->type = t;
  parser->state = (t == HTTP_REQUEST ? s_start_req : (t == HTTP_RESPONSE ? s_start_res : s_start_req_or_res));
  parser->http_errno = HPE_OK;
}
