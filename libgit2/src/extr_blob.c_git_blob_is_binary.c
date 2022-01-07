
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_off_t ;
typedef int git_buf ;
typedef int git_blob ;


 int GIT_BUF_INIT ;
 int GIT_FILTER_BYTES_TO_CHECK_NUL ;
 int assert (int const*) ;
 int git_blob_rawcontent (int const*) ;
 int git_blob_rawsize (int const*) ;
 int git_buf_attach_notowned (int *,int ,size_t) ;
 int git_buf_text_is_binary (int *) ;
 scalar_t__ min (int ,int ) ;

int git_blob_is_binary(const git_blob *blob)
{
 git_buf content = GIT_BUF_INIT;
 git_off_t size;

 assert(blob);

 size = git_blob_rawsize(blob);

 git_buf_attach_notowned(&content, git_blob_rawcontent(blob),
  (size_t)min(size, GIT_FILTER_BYTES_TO_CHECK_NUL));
 return git_buf_text_is_binary(&content);
}
