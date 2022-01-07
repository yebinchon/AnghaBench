
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_patch_parse_ctx ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 char* git_buf_detach (int *) ;
 int header_path_len (int *) ;
 scalar_t__ parse_header_path_buf (int *,int *,int ) ;

__attribute__((used)) static int parse_header_rename(
 char **out,
 git_patch_parse_ctx *ctx)
{
 git_buf path = GIT_BUF_INIT;

 if (parse_header_path_buf(&path, ctx, header_path_len(ctx)) < 0)
  return -1;




 *out = git_buf_detach(&path);
 return 0;
}
