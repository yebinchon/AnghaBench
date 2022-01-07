
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int O_CREAT ;
 int O_EXCL ;
 int O_WRONLY ;
 int cp_by_fd (int,int,int) ;
 int errno ;
 int git_futils_open_ro (char const*) ;
 int git_path_set_error (int ,char const*,char*) ;
 int p_close (int) ;
 int p_open (char const*,int,int ) ;

int git_futils_cp(const char *from, const char *to, mode_t filemode)
{
 int ifd, ofd;

 if ((ifd = git_futils_open_ro(from)) < 0)
  return ifd;

 if ((ofd = p_open(to, O_WRONLY | O_CREAT | O_EXCL, filemode)) < 0) {
  p_close(ifd);
  return git_path_set_error(errno, to, "open for writing");
 }

 return cp_by_fd(ifd, ofd, 1);
}
