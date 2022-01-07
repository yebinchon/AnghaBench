
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ERROR ;
 int git_futils_creat_withpath (char const*,int,int) ;
 int p_close (int) ;
 int p_write (int,char const*,int ) ;
 int strlen (char const*) ;

int git_futils_fake_symlink(const char *old, const char *new)
{
 int retcode = GIT_ERROR;
 int fd = git_futils_creat_withpath(new, 0755, 0644);
 if (fd >= 0) {
  retcode = p_write(fd, old, strlen(old));
  p_close(fd);
 }
 return retcode;
}
