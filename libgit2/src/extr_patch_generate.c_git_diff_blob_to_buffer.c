
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
typedef int git_blob ;


 int GIT_DIFF_FILE_CONTENT_SRC__BLOB (int const*,char const*) ;
 int GIT_DIFF_FILE_CONTENT_SRC__BUF (char const*,size_t,char const*) ;
 int diff_from_sources (int *,int *,int const*,int ,int ,int ,int ,void*) ;

int git_diff_blob_to_buffer(
 const git_blob *old_blob,
 const char *old_path,
 const char *buf,
 size_t buflen,
 const char *buf_path,
 const git_diff_options *opts,
 git_diff_file_cb file_cb,
 git_diff_binary_cb binary_cb,
 git_diff_hunk_cb hunk_cb,
 git_diff_line_cb data_cb,
 void *payload)
{
 git_diff_file_content_src osrc =
  GIT_DIFF_FILE_CONTENT_SRC__BLOB(old_blob, old_path);
 git_diff_file_content_src nsrc =
  GIT_DIFF_FILE_CONTENT_SRC__BUF(buf, buflen, buf_path);
 return diff_from_sources(
  &osrc, &nsrc, opts, file_cb, binary_cb, hunk_cb, data_cb, payload);
}
