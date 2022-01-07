
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct stat {scalar_t__ st_size; int st_mtime; } ;
struct TYPE_3__ {int path_original; int fd; scalar_t__ fd_is_open; } ;
typedef TYPE_1__ git_filebuf ;


 int GIT_ERROR_OS ;
 int git_error_set (int ,char*,int ) ;
 int p_fstat (int ,struct stat*) ;
 int p_stat (int ,struct stat*) ;

int git_filebuf_stats(time_t *mtime, size_t *size, git_filebuf *file)
{
 int res;
 struct stat st;

 if (file->fd_is_open)
  res = p_fstat(file->fd, &st);
 else
  res = p_stat(file->path_original, &st);

 if (res < 0) {
  git_error_set(GIT_ERROR_OS, "could not get stat info for '%s'",
   file->path_original);
  return res;
 }

 if (mtime)
  *mtime = st.st_mtime;
 if (size)
  *size = (size_t)st.st_size;

 return 0;
}
