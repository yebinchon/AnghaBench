
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_patch_parsed ;
struct TYPE_6__ {int parse_ctx; } ;
typedef TYPE_1__ git_patch_parse_ctx ;


 scalar_t__ git_parse_ctx_contains_s (int *,char*) ;
 int parse_patch_binary (int *,TYPE_1__*) ;
 int parse_patch_binary_nodata (int *,TYPE_1__*) ;
 int parse_patch_hunks (int *,TYPE_1__*) ;

__attribute__((used)) static int parse_patch_body(
 git_patch_parsed *patch, git_patch_parse_ctx *ctx)
{
 if (git_parse_ctx_contains_s(&ctx->parse_ctx, "GIT binary patch"))
  return parse_patch_binary(patch, ctx);
 else if (git_parse_ctx_contains_s(&ctx->parse_ctx, "Binary files "))
  return parse_patch_binary_nodata(patch, ctx);
 else
  return parse_patch_hunks(patch, ctx);
}
