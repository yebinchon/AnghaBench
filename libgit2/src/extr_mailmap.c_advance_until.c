
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* line; scalar_t__ line_len; } ;
typedef TYPE_1__ git_parse_ctx ;


 int git_parse_advance_chars (TYPE_1__*,int) ;

__attribute__((used)) static int advance_until(
 const char **start, size_t *len, git_parse_ctx *ctx, char needle)
{
 *start = ctx->line;
 while (ctx->line_len > 0 && *ctx->line != '#' && *ctx->line != needle)
  git_parse_advance_chars(ctx, 1);

 if (ctx->line_len == 0 || *ctx->line == '#')
  return -1;

 *len = ctx->line - *start;
 git_parse_advance_chars(ctx, 1);
 return 0;
}
