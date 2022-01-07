
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int git_sysdir_t ;
struct TYPE_9__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 int GIT_ENOTFOUND ;
 int GIT_ERROR_CHECK_ERROR (int ) ;
 int GIT_ERROR_OS ;
 char const GIT_PATH_LIST_SEPARATOR ;
 char* git_buf_cstr (TYPE_1__ const*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char const*) ;
 int git_buf_len (TYPE_1__ const*) ;
 int git_buf_set (TYPE_1__*,char const*,size_t) ;
 int git_error_set (int ,char*,char const*,char const*) ;
 scalar_t__ git_path_exists (int ) ;
 int git_sysdir_get (TYPE_1__ const**,int ) ;

__attribute__((used)) static int git_sysdir_find_in_dirlist(
 git_buf *path,
 const char *name,
 git_sysdir_t which,
 const char *label)
{
 size_t len;
 const char *scan, *next = ((void*)0);
 const git_buf *syspath;

 GIT_ERROR_CHECK_ERROR(git_sysdir_get(&syspath, which));
 if (!syspath || !git_buf_len(syspath))
  goto done;

 for (scan = git_buf_cstr(syspath); scan; scan = next) {

  for (next = scan; *next; ++next) {
   if (*next == GIT_PATH_LIST_SEPARATOR &&
    (next <= scan || next[-1] != '\\'))
    break;
  }

  len = (size_t)(next - scan);
  next = (*next ? next + 1 : ((void*)0));
  if (!len)
   continue;

  GIT_ERROR_CHECK_ERROR(git_buf_set(path, scan, len));
  if (name)
   GIT_ERROR_CHECK_ERROR(git_buf_joinpath(path, path->ptr, name));

  if (git_path_exists(path->ptr))
   return 0;
 }

done:
 git_buf_dispose(path);
 git_error_set(GIT_ERROR_OS, "the %s file '%s' doesn't exist", label, name);
 return GIT_ENOTFOUND;
}
