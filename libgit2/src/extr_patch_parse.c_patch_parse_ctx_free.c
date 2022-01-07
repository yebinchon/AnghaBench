
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int parse_ctx; } ;
typedef TYPE_1__ git_patch_parse_ctx ;


 int git__free (TYPE_1__*) ;
 int git_parse_ctx_clear (int *) ;

__attribute__((used)) static void patch_parse_ctx_free(git_patch_parse_ctx *ctx)
{
 if (!ctx)
  return;

 git_parse_ctx_clear(&ctx->parse_ctx);
 git__free(ctx);
}
