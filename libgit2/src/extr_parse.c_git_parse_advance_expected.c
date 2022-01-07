
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t line_len; int line; } ;
typedef TYPE_1__ git_parse_ctx ;


 int git_parse_advance_chars (TYPE_1__*,size_t) ;
 scalar_t__ memcmp (int ,char const*,size_t) ;

int git_parse_advance_expected(
 git_parse_ctx *ctx,
 const char *expected,
 size_t expected_len)
{
 if (ctx->line_len < expected_len)
  return -1;

 if (memcmp(ctx->line, expected, expected_len) != 0)
  return -1;

 git_parse_advance_chars(ctx, expected_len);
 return 0;
}
