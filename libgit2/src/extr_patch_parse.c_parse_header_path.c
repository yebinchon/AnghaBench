
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_patch_parse_ctx ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 char* git_buf_detach (int *) ;
 int git_buf_dispose (int *) ;
 int header_path_len (int *) ;
 int parse_header_path_buf (int *,int *,int ) ;

__attribute__((used)) static int parse_header_path(char **out, git_patch_parse_ctx *ctx)
{
 git_buf path = GIT_BUF_INIT;
 int error;

 if ((error = parse_header_path_buf(&path, ctx, header_path_len(ctx))) < 0)
  goto out;
 *out = git_buf_detach(&path);

out:
 git_buf_dispose(&path);
 return error;
}
