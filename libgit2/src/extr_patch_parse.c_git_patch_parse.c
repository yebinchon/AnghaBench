
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {int flags; int new_prefix; int old_prefix; } ;
struct TYPE_16__ {size_t remain_len; size_t remain; } ;
struct TYPE_19__ {TYPE_2__ diff_opts; TYPE_1__ parse_ctx; TYPE_3__* delta; int (* free_fn ) (TYPE_4__*) ;} ;
struct TYPE_18__ {int nfiles; TYPE_4__ base; int new_prefix; int old_prefix; int status; TYPE_4__* ctx; } ;
typedef TYPE_3__ git_patch_parsed ;
typedef TYPE_4__ git_patch_parse_ctx ;
typedef TYPE_4__ git_patch ;
typedef int git_diff_delta ;


 int GIT_DELTA_MODIFIED ;
 int GIT_DIFF_SHOW_BINARY ;
 int GIT_ERROR_CHECK_ALLOC (TYPE_3__*) ;
 int GIT_REFCOUNT_INC (TYPE_4__*) ;
 int assert (int) ;
 int check_patch (TYPE_3__*) ;
 void* git__calloc (int,int) ;
 int parse_patch_body (TYPE_3__*,TYPE_4__*) ;
 int parse_patch_header (TYPE_3__*,TYPE_4__*) ;
 int patch_parsed__free (TYPE_4__*) ;

int git_patch_parse(
 git_patch **out,
 git_patch_parse_ctx *ctx)
{
 git_patch_parsed *patch;
 size_t start, used;
 int error = 0;

 assert(out && ctx);

 *out = ((void*)0);

 patch = git__calloc(1, sizeof(git_patch_parsed));
 GIT_ERROR_CHECK_ALLOC(patch);

 patch->ctx = ctx;
 GIT_REFCOUNT_INC(patch->ctx);

 patch->base.free_fn = patch_parsed__free;

 patch->base.delta = git__calloc(1, sizeof(git_diff_delta));
 GIT_ERROR_CHECK_ALLOC(patch->base.delta);

 patch->base.delta->status = GIT_DELTA_MODIFIED;
 patch->base.delta->nfiles = 2;

 start = ctx->parse_ctx.remain_len;

 if ((error = parse_patch_header(patch, ctx)) < 0 ||
  (error = parse_patch_body(patch, ctx)) < 0 ||
  (error = check_patch(patch)) < 0)
  goto done;

 used = start - ctx->parse_ctx.remain_len;
 ctx->parse_ctx.remain += used;

 patch->base.diff_opts.old_prefix = patch->old_prefix;
 patch->base.diff_opts.new_prefix = patch->new_prefix;
 patch->base.diff_opts.flags |= GIT_DIFF_SHOW_BINARY;

 GIT_REFCOUNT_INC(&patch->base);
 *out = &patch->base;

done:
 if (error < 0)
  patch_parsed__free(&patch->base);

 return error;
}
