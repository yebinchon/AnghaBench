
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ size; int ptr; } ;
struct TYPE_7__ {scalar_t__ parent_len; unsigned int flags; TYPE_3__ path; int ic; int * dir; } ;
typedef TYPE_1__ git_path_diriter ;


 int GIT_ERROR_FILESYSTEM ;
 int GIT_ERROR_OS ;
 unsigned int GIT_PATH_DIR_PRECOMPOSE_UNICODE ;
 int assert (int) ;
 int git_buf_dispose (TYPE_3__*) ;
 scalar_t__ git_buf_puts (TYPE_3__*,char const*) ;
 int git_error_set (int ,char*,char const*) ;
 int git_path_iconv_init_precompose (int *) ;
 int git_path_trim_slashes (TYPE_3__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int * opendir (int ) ;

int git_path_diriter_init(
 git_path_diriter *diriter,
 const char *path,
 unsigned int flags)
{
 assert(diriter && path);

 memset(diriter, 0, sizeof(git_path_diriter));

 if (git_buf_puts(&diriter->path, path) < 0)
  return -1;

 git_path_trim_slashes(&diriter->path);

 if (diriter->path.size == 0) {
  git_error_set(GIT_ERROR_FILESYSTEM, "could not open directory '%s'", path);
  return -1;
 }

 if ((diriter->dir = opendir(diriter->path.ptr)) == ((void*)0)) {
  git_buf_dispose(&diriter->path);

  git_error_set(GIT_ERROR_OS, "failed to open directory '%s'", path);
  return -1;
 }






 diriter->parent_len = diriter->path.size;
 diriter->flags = flags;

 return 0;
}
