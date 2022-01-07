
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mode_t ;
typedef int git_buf ;


 int GIT_ERROR_OS ;
 scalar_t__ GIT_FILEMODE_BLOB ;
 int O_CREAT ;
 int O_FSYNC ;
 int O_TRUNC ;
 int O_WRONLY ;
 int git_buf_cstr (int const*) ;
 int git_buf_len (int const*) ;
 int git_error_set (int ,char*,char const*) ;
 int git_futils_fsync_parent (char const*) ;
 int p_close (int) ;
 int p_fsync (int) ;
 int p_open (char const*,int,scalar_t__) ;
 int p_write (int,int ,int ) ;

int git_futils_writebuffer(
 const git_buf *buf, const char *path, int flags, mode_t mode)
{
 int fd, do_fsync = 0, error = 0;

 if (!flags)
  flags = O_CREAT | O_TRUNC | O_WRONLY;

 if ((flags & O_FSYNC) != 0)
  do_fsync = 1;

 flags &= ~O_FSYNC;

 if (!mode)
  mode = GIT_FILEMODE_BLOB;

 if ((fd = p_open(path, flags, mode)) < 0) {
  git_error_set(GIT_ERROR_OS, "could not open '%s' for writing", path);
  return fd;
 }

 if ((error = p_write(fd, git_buf_cstr(buf), git_buf_len(buf))) < 0) {
  git_error_set(GIT_ERROR_OS, "could not write to '%s'", path);
  (void)p_close(fd);
  return error;
 }

 if (do_fsync && (error = p_fsync(fd)) < 0) {
  git_error_set(GIT_ERROR_OS, "could not fsync '%s'", path);
  p_close(fd);
  return error;
 }

 if ((error = p_close(fd)) < 0) {
  git_error_set(GIT_ERROR_OS, "error while closing '%s'", path);
  return error;
 }

 if (do_fsync && (flags & O_CREAT))
  error = git_futils_fsync_parent(path);

 return error;
}
