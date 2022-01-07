
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CLOEXEC ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int close (int) ;
 int errno ;
 int git_path_set_error (int ,char const*,char*) ;
 int p_open (char const*,int,int) ;

int git_futils_truncate(const char *path, int mode)
{
 int fd = p_open(path, O_WRONLY | O_CREAT | O_TRUNC | O_CLOEXEC, mode);
 if (fd < 0)
  return git_path_set_error(errno, path, "open");

 close(fd);
 return 0;
}
