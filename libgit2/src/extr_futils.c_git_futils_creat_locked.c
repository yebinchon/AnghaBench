
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;




 int GIT_ELOCKED ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_OS ;
 int O_BINARY ;
 int O_CLOEXEC ;
 int O_CREAT ;
 int O_EXCL ;
 int O_WRONLY ;
 int errno ;
 int git_error_set (int ,char*,char const*) ;
 int p_open (char const*,int,int const) ;

int git_futils_creat_locked(const char *path, const mode_t mode)
{
 int fd = p_open(path, O_WRONLY | O_CREAT | O_EXCL | O_BINARY | O_CLOEXEC,
  mode);

 if (fd < 0) {
  int error = errno;
  git_error_set(GIT_ERROR_OS, "failed to create locked file '%s'", path);
  switch (error) {
  case 129:
   return GIT_ELOCKED;
  case 128:
   return GIT_ENOTFOUND;
  default:
   return -1;
  }
 }

 return fd;
}
