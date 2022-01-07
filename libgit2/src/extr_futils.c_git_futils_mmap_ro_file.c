
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ git_off_t ;
typedef int git_map ;
typedef scalar_t__ git_file ;


 int GIT_ERROR_OS ;
 int git__is_sizet (scalar_t__) ;
 int git_error_set (int ,char*,char const*) ;
 scalar_t__ git_futils_filesize (scalar_t__) ;
 int git_futils_mmap_ro (int *,scalar_t__,int ,size_t) ;
 scalar_t__ git_futils_open_ro (char const*) ;
 int p_close (scalar_t__) ;

int git_futils_mmap_ro_file(git_map *out, const char *path)
{
 git_file fd = git_futils_open_ro(path);
 git_off_t len;
 int result;

 if (fd < 0)
  return fd;

 if ((len = git_futils_filesize(fd)) < 0) {
  result = -1;
  goto out;
 }

 if (!git__is_sizet(len)) {
  git_error_set(GIT_ERROR_OS, "file `%s` too large to mmap", path);
  result = -1;
  goto out;
 }

 result = git_futils_mmap_ro(out, fd, 0, (size_t)len);
out:
 p_close(fd);
 return result;
}
