
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int line_len; char* line; } ;
typedef TYPE_1__ git_parse_ctx ;


 int git_parse_advance_line (TYPE_1__*) ;

int git_parse_advance_nl(git_parse_ctx *ctx)
{
 if (ctx->line_len != 1 || ctx->line[0] != '\n')
  return -1;

 git_parse_advance_line(ctx);
 return 0;
}
