
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t line; size_t remain_len; size_t line_len; } ;
typedef TYPE_1__ git_parse_ctx ;



void git_parse_advance_chars(git_parse_ctx *ctx, size_t char_cnt)
{
 ctx->line += char_cnt;
 ctx->remain_len -= char_cnt;
 ctx->line_len -= char_cnt;
}
