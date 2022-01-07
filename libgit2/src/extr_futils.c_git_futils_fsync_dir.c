
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ERROR_OS ;
 int GIT_UNUSED (char const*) ;
 int O_RDONLY ;
 int git_error_set (int ,char*,char const*) ;
 int p_close (int) ;
 int p_fsync (int) ;
 int p_open (char const*,int ) ;

int git_futils_fsync_dir(const char *path)
{




 int fd, error = -1;

 if ((fd = p_open(path, O_RDONLY)) < 0) {
  git_error_set(GIT_ERROR_OS, "failed to open directory '%s' for fsync", path);
  return -1;
 }

 if ((error = p_fsync(fd)) < 0)
  git_error_set(GIT_ERROR_OS, "failed to fsync directory '%s'", path);

 p_close(fd);
 return error;

}
