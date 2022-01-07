
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int mode_t ;
struct TYPE_6__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 int GIT_ERROR_OS ;
 scalar_t__ git_buf_oom (TYPE_1__*) ;
 int git_buf_puts (TYPE_1__*,char*) ;
 int git_buf_sets (TYPE_1__*,char const*) ;
 int git_error_set (int ,char*,int ) ;
 scalar_t__ p_chmod (int ,int) ;
 int p_mkstemp (int ) ;
 int p_umask (int) ;

int git_futils_mktmp(git_buf *path_out, const char *filename, mode_t mode)
{
 int fd;
 mode_t mask;

 p_umask(mask = p_umask(0));

 git_buf_sets(path_out, filename);
 git_buf_puts(path_out, "_git2_XXXXXX");

 if (git_buf_oom(path_out))
  return -1;

 if ((fd = p_mkstemp(path_out->ptr)) < 0) {
  git_error_set(GIT_ERROR_OS,
   "failed to create temporary file '%s'", path_out->ptr);
  return -1;
 }

 if (p_chmod(path_out->ptr, (mode & ~mask))) {
  git_error_set(GIT_ERROR_OS,
   "failed to set permissions on file '%s'", path_out->ptr);
  return -1;
 }

 return fd;
}
