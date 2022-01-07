
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int line_num; int remain_len; int line; scalar_t__ line_len; } ;
typedef TYPE_1__ git_parse_ctx ;


 scalar_t__ git__linenlen (int ,int ) ;

void git_parse_advance_line(git_parse_ctx *ctx)
{
 ctx->line += ctx->line_len;
 ctx->remain_len -= ctx->line_len;
 ctx->line_len = git__linenlen(ctx->line, ctx->remain_len);
 ctx->line_num++;
}
