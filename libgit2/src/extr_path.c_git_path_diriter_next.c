
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct dirent {char* d_name; } ;
struct TYPE_9__ {char* ptr; } ;
struct TYPE_8__ {int flags; int parent_len; TYPE_3__ path; int ic; int dir; } ;
typedef TYPE_1__ git_path_diriter ;


 int GIT_ERROR_OS ;
 int GIT_ITEROVER ;
 int GIT_PATH_DIR_INCLUDE_DOT_AND_DOTDOT ;
 int GIT_PATH_DIR_PRECOMPOSE_UNICODE ;
 int assert (TYPE_1__*) ;
 scalar_t__ errno ;
 scalar_t__ git_buf_oom (TYPE_3__*) ;
 int git_buf_put (TYPE_3__*,char const*,size_t) ;
 int git_buf_putc (TYPE_3__*,char) ;
 int git_buf_truncate (TYPE_3__*,int) ;
 int git_error_set (int ,char*,char*) ;
 int git_path_iconv (int *,char const**,size_t*) ;
 scalar_t__ git_path_is_dot_or_dotdot (char*) ;
 struct dirent* readdir (int ) ;
 size_t strlen (char const*) ;

int git_path_diriter_next(git_path_diriter *diriter)
{
 struct dirent *de;
 const char *filename;
 size_t filename_len;
 bool skip_dot = !(diriter->flags & GIT_PATH_DIR_INCLUDE_DOT_AND_DOTDOT);
 int error = 0;

 assert(diriter);

 errno = 0;

 do {
  if ((de = readdir(diriter->dir)) == ((void*)0)) {
   if (!errno)
    return GIT_ITEROVER;

   git_error_set(GIT_ERROR_OS,
    "could not read directory '%s'", diriter->path.ptr);
   return -1;
  }
 } while (skip_dot && git_path_is_dot_or_dotdot(de->d_name));

 filename = de->d_name;
 filename_len = strlen(filename);







 git_buf_truncate(&diriter->path, diriter->parent_len);

 if (diriter->parent_len > 0 &&
  diriter->path.ptr[diriter->parent_len-1] != '/')
  git_buf_putc(&diriter->path, '/');

 git_buf_put(&diriter->path, filename, filename_len);

 if (git_buf_oom(&diriter->path))
  return -1;

 return error;
}
