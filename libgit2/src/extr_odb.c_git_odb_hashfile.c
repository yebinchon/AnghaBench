
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef scalar_t__ git_off_t ;
typedef int git_object_t ;


 int GIT_ERROR_OS ;
 int git__is_sizet (scalar_t__) ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_futils_filesize (int) ;
 int git_futils_open_ro (char const*) ;
 int git_odb__hashfd (int *,int,size_t,int ) ;
 int p_close (int) ;

int git_odb_hashfile(git_oid *out, const char *path, git_object_t type)
{
 git_off_t size;
 int result, fd = git_futils_open_ro(path);
 if (fd < 0)
  return fd;

 if ((size = git_futils_filesize(fd)) < 0 || !git__is_sizet(size)) {
  git_error_set(GIT_ERROR_OS, "file size overflow for 32-bit systems");
  p_close(fd);
  return -1;
 }

 result = git_odb__hashfd(out, fd, (size_t)size, type);
 p_close(fd);
 return result;
}
