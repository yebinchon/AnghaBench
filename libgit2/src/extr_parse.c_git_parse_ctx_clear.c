
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* content; } ;
typedef TYPE_1__ git_parse_ctx ;


 int memset (TYPE_1__*,int ,int) ;

void git_parse_ctx_clear(git_parse_ctx *ctx)
{
 memset(ctx, 0, sizeof(*ctx));
 ctx->content = "";
}
