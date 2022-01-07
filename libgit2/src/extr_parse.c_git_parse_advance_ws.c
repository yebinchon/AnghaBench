
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ line_len; char* line; int remain_len; } ;
typedef TYPE_1__ git_parse_ctx ;


 scalar_t__ git__isspace (char) ;

int git_parse_advance_ws(git_parse_ctx *ctx)
{
 int ret = -1;

 while (ctx->line_len > 0 &&
  ctx->line[0] != '\n' &&
  git__isspace(ctx->line[0])) {
  ctx->line++;
  ctx->line_len--;
  ctx->remain_len--;
  ret = 0;
 }

 return ret;
}
