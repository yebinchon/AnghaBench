
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ git_off_t ;
typedef int git_buf ;
typedef int git_blob ;


 int GIT_ERROR_CHECK_BLOBSIZE (scalar_t__) ;
 int git_blob_rawcontent (int *) ;
 scalar_t__ git_blob_rawsize (int *) ;
 int git_buf_set (int *,int ,size_t) ;

int git_blob__getbuf(git_buf *buffer, git_blob *blob)
{
 git_off_t size = git_blob_rawsize(blob);

 GIT_ERROR_CHECK_BLOBSIZE(size);
 return git_buf_set(buffer, git_blob_rawcontent(blob), (size_t)size);
}
