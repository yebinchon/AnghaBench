
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_patch ;
typedef int git_diff_options ;
typedef int git_diff_file_content_src ;


 int GIT_DIFF_FILE_CONTENT_SRC__BUF (void const*,size_t,char const*) ;
 int patch_from_sources (int **,int *,int *,int const*) ;

int git_patch_from_buffers(
 git_patch **out,
 const void *old_buf,
 size_t old_len,
 const char *old_path,
 const void *new_buf,
 size_t new_len,
 const char *new_path,
 const git_diff_options *opts)
{
 git_diff_file_content_src osrc =
  GIT_DIFF_FILE_CONTENT_SRC__BUF(old_buf, old_len, old_path);
 git_diff_file_content_src nsrc =
  GIT_DIFF_FILE_CONTENT_SRC__BUF(new_buf, new_len, new_path);
 return patch_from_sources(out, &osrc, &nsrc, opts);
}
