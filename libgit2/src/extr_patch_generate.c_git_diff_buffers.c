
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_diff_options ;
typedef int git_diff_line_cb ;
typedef int git_diff_hunk_cb ;
typedef int git_diff_file_content_src ;
typedef int git_diff_file_cb ;
typedef int git_diff_binary_cb ;


 int GIT_DIFF_FILE_CONTENT_SRC__BUF (void const*,size_t,char const*) ;
 int diff_from_sources (int *,int *,int const*,int ,int ,int ,int ,void*) ;

int git_diff_buffers(
 const void *old_buf,
 size_t old_len,
 const char *old_path,
 const void *new_buf,
 size_t new_len,
 const char *new_path,
 const git_diff_options *opts,
 git_diff_file_cb file_cb,
 git_diff_binary_cb binary_cb,
 git_diff_hunk_cb hunk_cb,
 git_diff_line_cb data_cb,
 void *payload)
{
 git_diff_file_content_src osrc =
  GIT_DIFF_FILE_CONTENT_SRC__BUF(old_buf, old_len, old_path);
 git_diff_file_content_src nsrc =
  GIT_DIFF_FILE_CONTENT_SRC__BUF(new_buf, new_len, new_path);
 return diff_from_sources(
  &osrc, &nsrc, opts, file_cb, binary_cb, hunk_cb, data_cb, payload);
}
