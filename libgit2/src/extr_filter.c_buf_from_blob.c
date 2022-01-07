
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ git_off_t ;
typedef int git_buf ;
typedef int git_blob ;


 int GIT_ERROR_OS ;
 int git__is_sizet (scalar_t__) ;
 int git_blob_rawcontent (int *) ;
 scalar_t__ git_blob_rawsize (int *) ;
 int git_buf_attach_notowned (int *,int ,size_t) ;
 int git_error_set (int ,char*) ;

__attribute__((used)) static int buf_from_blob(git_buf *out, git_blob *blob)
{
 git_off_t rawsize = git_blob_rawsize(blob);

 if (!git__is_sizet(rawsize)) {
  git_error_set(GIT_ERROR_OS, "blob is too large to filter");
  return -1;
 }

 git_buf_attach_notowned(out, git_blob_rawcontent(blob), (size_t)rawsize);
 return 0;
}
