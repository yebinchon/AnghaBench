
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* t; } ;
typedef TYPE_1__ parser_context ;
struct TYPE_7__ {scalar_t__ last_cb; int parse_error; int parse_header_name; } ;
typedef TYPE_2__ http_subtransport ;
struct TYPE_8__ {scalar_t__ data; } ;
typedef TYPE_3__ http_parser ;


 scalar_t__ FIELD ;
 scalar_t__ NONE ;
 int PARSE_ERROR_GENERIC ;
 scalar_t__ VALUE ;
 int git_buf_clear (int *) ;
 scalar_t__ git_buf_put (int *,char const*,size_t) ;
 scalar_t__ on_header_ready (TYPE_2__*) ;

__attribute__((used)) static int on_header_field(http_parser *parser, const char *str, size_t len)
{
 parser_context *ctx = (parser_context *) parser->data;
 http_subtransport *t = ctx->t;



 if (VALUE == t->last_cb)
  if (on_header_ready(t) < 0)
   return t->parse_error = PARSE_ERROR_GENERIC;

 if (NONE == t->last_cb || VALUE == t->last_cb)
  git_buf_clear(&t->parse_header_name);

 if (git_buf_put(&t->parse_header_name, str, len) < 0)
  return t->parse_error = PARSE_ERROR_GENERIC;

 t->last_cb = FIELD;
 return 0;
}
