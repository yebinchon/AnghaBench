
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {TYPE_1__* delta; int lines; int hunks; } ;
struct TYPE_18__ {TYPE_2__ base; } ;
typedef TYPE_3__ git_patch_parsed ;
struct TYPE_19__ {int parse_ctx; } ;
typedef TYPE_4__ git_patch_parse_ctx ;
struct TYPE_20__ {scalar_t__ line_count; int line_start; } ;
typedef TYPE_5__ git_patch_hunk ;
struct TYPE_16__ {int flags; } ;


 int GIT_DIFF_FLAG_NOT_BINARY ;
 int GIT_ERROR_CHECK_ALLOC (TYPE_5__*) ;
 TYPE_5__* git_array_alloc (int ) ;
 int git_array_size (int ) ;
 scalar_t__ git_parse_ctx_contains_s (int *,char*) ;
 int memset (TYPE_5__*,int ,int) ;
 int parse_hunk_body (TYPE_3__*,TYPE_5__*,TYPE_4__*) ;
 int parse_hunk_header (TYPE_5__*,TYPE_4__*) ;

__attribute__((used)) static int parse_patch_hunks(
 git_patch_parsed *patch,
 git_patch_parse_ctx *ctx)
{
 git_patch_hunk *hunk;
 int error = 0;

 while (git_parse_ctx_contains_s(&ctx->parse_ctx, "@@ -")) {
  hunk = git_array_alloc(patch->base.hunks);
  GIT_ERROR_CHECK_ALLOC(hunk);

  memset(hunk, 0, sizeof(git_patch_hunk));

  hunk->line_start = git_array_size(patch->base.lines);
  hunk->line_count = 0;

  if ((error = parse_hunk_header(hunk, ctx)) < 0 ||
   (error = parse_hunk_body(patch, hunk, ctx)) < 0)
   goto done;
 }

 patch->base.delta->flags |= GIT_DIFF_FLAG_NOT_BINARY;

done:
 return error;
}
