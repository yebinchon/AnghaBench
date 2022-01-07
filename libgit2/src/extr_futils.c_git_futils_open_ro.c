
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int errno ;
 int git_path_set_error (int ,char const*,char*) ;
 int p_open (char const*,int ) ;

int git_futils_open_ro(const char *path)
{
 int fd = p_open(path, O_RDONLY);
 if (fd < 0)
  return git_path_set_error(errno, path, "open");
 return fd;
}
