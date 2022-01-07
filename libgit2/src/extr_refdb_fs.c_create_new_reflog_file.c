
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_REFLOG_DIR_MODE ;
 int GIT_REFLOG_FILE_MODE ;
 int O_CREAT ;
 int O_WRONLY ;
 int git_futils_mkpath2file (char const*,int ) ;
 int p_close (int) ;
 int p_open (char const*,int,int ) ;

__attribute__((used)) static int create_new_reflog_file(const char *filepath)
{
 int fd, error;

 if ((error = git_futils_mkpath2file(filepath, GIT_REFLOG_DIR_MODE)) < 0)
  return error;

 if ((fd = p_open(filepath,
   O_WRONLY | O_CREAT,
   GIT_REFLOG_FILE_MODE)) < 0)
  return -1;

 return p_close(fd);
}
