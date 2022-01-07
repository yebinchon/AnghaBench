
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int opts; int parse_ctx; } ;
typedef TYPE_1__ git_patch_parse_ctx ;
typedef int const git_patch_options ;


 int const GIT_PATCH_OPTIONS_INIT ;
 int GIT_REFCOUNT_INC (TYPE_1__*) ;
 TYPE_1__* git__calloc (int,int) ;
 int git__free (TYPE_1__*) ;
 scalar_t__ git_parse_ctx_init (int *,char const*,size_t) ;
 int memcpy (int *,int const*,int) ;

git_patch_parse_ctx *git_patch_parse_ctx_init(
 const char *content,
 size_t content_len,
 const git_patch_options *opts)
{
 git_patch_parse_ctx *ctx;
 git_patch_options default_opts = GIT_PATCH_OPTIONS_INIT;

 if ((ctx = git__calloc(1, sizeof(git_patch_parse_ctx))) == ((void*)0))
  return ((void*)0);

 if ((git_parse_ctx_init(&ctx->parse_ctx, content, content_len)) < 0) {
  git__free(ctx);
  return ((void*)0);
 }

 if (opts)
  memcpy(&ctx->opts, opts, sizeof(git_patch_options));
 else
  memcpy(&ctx->opts, &default_opts, sizeof(git_patch_options));

 GIT_REFCOUNT_INC(ctx);
 return ctx;
}
