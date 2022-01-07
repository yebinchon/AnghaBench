
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int GIT_ERROR_OS ;
 int git_error_set (int ,char*,char const*) ;
 scalar_t__ p_close (int) ;
 int p_creat (char const*,int ) ;

__attribute__((used)) static int create_empty_file(const char *path, mode_t mode)
{
 int fd;

 if ((fd = p_creat(path, mode)) < 0) {
  git_error_set(GIT_ERROR_OS, "error while creating '%s'", path);
  return -1;
 }

 if (p_close(fd) < 0) {
  git_error_set(GIT_ERROR_OS, "error while closing '%s'", path);
  return -1;
 }

 return 0;
}
