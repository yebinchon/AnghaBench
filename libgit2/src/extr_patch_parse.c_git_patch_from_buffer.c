
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_patch_parse_ctx ;
typedef int git_patch_options ;
typedef int git_patch ;


 int GIT_ERROR_CHECK_ALLOC (int *) ;
 int git_patch_parse (int **,int *) ;
 int git_patch_parse_ctx_free (int *) ;
 int * git_patch_parse_ctx_init (char const*,size_t,int const*) ;

int git_patch_from_buffer(
 git_patch **out,
 const char *content,
 size_t content_len,
 const git_patch_options *opts)
{
 git_patch_parse_ctx *ctx;
 int error;

 ctx = git_patch_parse_ctx_init(content, content_len, opts);
 GIT_ERROR_CHECK_ALLOC(ctx);

 error = git_patch_parse(out, ctx);

 git_patch_parse_ctx_free(ctx);
 return error;
}
