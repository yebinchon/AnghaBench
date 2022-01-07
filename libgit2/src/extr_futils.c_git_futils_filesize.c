
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
typedef int git_off_t ;
typedef int git_file ;


 int GIT_ERROR_OS ;
 int git_error_set (int ,char*) ;
 scalar_t__ p_fstat (int ,struct stat*) ;

git_off_t git_futils_filesize(git_file fd)
{
 struct stat sb;

 if (p_fstat(fd, &sb)) {
  git_error_set(GIT_ERROR_OS, "failed to stat file descriptor");
  return -1;
 }

 return sb.st_size;
}
