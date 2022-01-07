
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_sysdir_t ;
struct TYPE_4__ {size_t size; } ;
typedef TYPE_1__ git_buf ;


 int GIT_EBUFS ;
 int GIT_ERROR_CHECK_ERROR (int ) ;
 int GIT_ERROR_NOMEMORY ;
 int git_buf_copy_cstr (char*,size_t,TYPE_1__ const*) ;
 int git_error_set (int ,char*) ;
 int git_sysdir_check_selector (int ) ;
 int git_sysdir_get (TYPE_1__ const**,int ) ;

int git_sysdir_get_str(
 char *out,
 size_t outlen,
 git_sysdir_t which)
{
 const git_buf *path = ((void*)0);

 GIT_ERROR_CHECK_ERROR(git_sysdir_check_selector(which));
 GIT_ERROR_CHECK_ERROR(git_sysdir_get(&path, which));

 if (!out || path->size >= outlen) {
  git_error_set(GIT_ERROR_NOMEMORY, "buffer is too short for the path");
  return GIT_EBUFS;
 }

 git_buf_copy_cstr(out, outlen, path);
 return 0;
}
