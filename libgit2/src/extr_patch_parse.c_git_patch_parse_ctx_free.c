
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_patch_parse_ctx ;


 int GIT_REFCOUNT_DEC (int *,int ) ;
 int patch_parse_ctx_free ;

void git_patch_parse_ctx_free(git_patch_parse_ctx *ctx)
{
 GIT_REFCOUNT_DEC(ctx, patch_parse_ctx_free);
}
