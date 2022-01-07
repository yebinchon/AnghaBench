
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* content; size_t content_len; char* remain; size_t remain_len; char* line; int line_num; int line_len; } ;
typedef TYPE_1__ git_parse_ctx ;


 int git__linenlen (char*,size_t) ;

int git_parse_ctx_init(git_parse_ctx *ctx, const char *content, size_t content_len)
{
 if (content && content_len) {
  ctx->content = content;
  ctx->content_len = content_len;
 } else {
  ctx->content = "";
  ctx->content_len = 0;
 }

 ctx->remain = ctx->content;
 ctx->remain_len = ctx->content_len;
 ctx->line = ctx->remain;
 ctx->line_len = git__linenlen(ctx->line, ctx->remain_len);
 ctx->line_num = 1;

 return 0;
}
