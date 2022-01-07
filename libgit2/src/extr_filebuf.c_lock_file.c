
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int mode_t ;
struct TYPE_3__ {scalar_t__ fd; int fd_is_open; int path_lock; int path_original; int digest; scalar_t__ compute_digest; } ;
typedef TYPE_1__ git_filebuf ;
typedef scalar_t__ git_file ;
typedef int buffer ;


 int FILEIO_BUFSIZE ;
 int GIT_ELOCKED ;
 int GIT_ERROR_OS ;
 int GIT_FILEBUF_APPEND ;
 int GIT_FILEBUF_CREATE_LEADING_DIRS ;
 int O_RDONLY ;
 int git_error_clear () ;
 int git_error_set (int ,char*,int ) ;
 scalar_t__ git_futils_creat_locked (int ,int ) ;
 scalar_t__ git_futils_creat_locked_withpath (int ,int,int ) ;
 int git_hash_update (int *,char*,scalar_t__) ;
 int git_path_exists (int ) ;
 int p_close (scalar_t__) ;
 scalar_t__ p_open (int ,int ) ;
 scalar_t__ p_read (scalar_t__,char*,int) ;
 int p_write (int,char*,scalar_t__) ;

__attribute__((used)) static int lock_file(git_filebuf *file, int flags, mode_t mode)
{
 if (git_path_exists(file->path_lock) == 1) {
  git_error_clear();
  git_error_set(GIT_ERROR_OS,
   "failed to lock file '%s' for writing", file->path_lock);
  return GIT_ELOCKED;
 }


 if (flags & GIT_FILEBUF_CREATE_LEADING_DIRS) {

  file->fd = git_futils_creat_locked_withpath(file->path_lock, 0777, mode);
 } else {
  file->fd = git_futils_creat_locked(file->path_lock, mode);
 }

 if (file->fd < 0)
  return file->fd;

 file->fd_is_open = 1;

 if ((flags & GIT_FILEBUF_APPEND) && git_path_exists(file->path_original) == 1) {
  git_file source;
  char buffer[FILEIO_BUFSIZE];
  ssize_t read_bytes;
  int error = 0;

  source = p_open(file->path_original, O_RDONLY);
  if (source < 0) {
   git_error_set(GIT_ERROR_OS,
    "failed to open file '%s' for reading",
    file->path_original);
   return -1;
  }

  while ((read_bytes = p_read(source, buffer, sizeof(buffer))) > 0) {
   if ((error = p_write(file->fd, buffer, read_bytes)) < 0)
    break;
   if (file->compute_digest)
    git_hash_update(&file->digest, buffer, read_bytes);
  }

  p_close(source);

  if (read_bytes < 0) {
   git_error_set(GIT_ERROR_OS, "failed to read file '%s'", file->path_original);
   return -1;
  } else if (error < 0) {
   git_error_set(GIT_ERROR_OS, "failed to write file '%s'", file->path_lock);
   return -1;
  }
 }

 return 0;
}
