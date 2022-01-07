
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_EBUFS ;
 int GIT_ERROR_REFERENCE ;
 int git_buf_copy_cstr (char*,size_t,int *) ;
 int git_buf_dispose (int *) ;
 size_t git_buf_len (int *) ;
 int git_error_set (int ,char*,char const*) ;
 int git_reference__normalize_name (int *,char const*,unsigned int) ;

int git_reference_normalize_name(
 char *buffer_out,
 size_t buffer_size,
 const char *name,
 unsigned int flags)
{
 git_buf buf = GIT_BUF_INIT;
 int error;

 if ((error = git_reference__normalize_name(&buf, name, flags)) < 0)
  goto cleanup;

 if (git_buf_len(&buf) > buffer_size - 1) {
  git_error_set(
  GIT_ERROR_REFERENCE,
  "the provided buffer is too short to hold the normalization of '%s'", name);
  error = GIT_EBUFS;
  goto cleanup;
 }

 git_buf_copy_cstr(buffer_out, buffer_size, &buf);

 error = 0;

cleanup:
 git_buf_dispose(&buf);
 return error;
}
