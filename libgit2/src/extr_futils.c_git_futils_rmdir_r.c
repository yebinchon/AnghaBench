
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int git_buf ;
struct TYPE_5__ {char const* base; int flags; int baselen; } ;
typedef TYPE_1__ futils__rmdir_data ;
typedef int data ;


 int GIT_BUF_INIT ;
 int GIT_ITEROVER ;
 int GIT_RMDIR_EMPTY_PARENTS ;
 int futils__rmdir_empty_parent ;
 int futils__rmdir_recurs_foreach (TYPE_1__*,int *) ;
 int git_buf_dispose (int *) ;
 int git_error_clear () ;
 scalar_t__ git_path_join_unrooted (int *,char const*,char const*,int *) ;
 int git_path_walk_up (int *,char const*,int ,TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int strlen (char const*) ;

int git_futils_rmdir_r(
 const char *path, const char *base, uint32_t flags)
{
 int error;
 git_buf fullpath = GIT_BUF_INIT;
 futils__rmdir_data data;


 if (git_path_join_unrooted(&fullpath, path, base, ((void*)0)) < 0)
  return -1;

 memset(&data, 0, sizeof(data));
 data.base = base ? base : "";
 data.baselen = base ? strlen(base) : 0;
 data.flags = flags;

 error = futils__rmdir_recurs_foreach(&data, &fullpath);


 if (!error && (flags & GIT_RMDIR_EMPTY_PARENTS) != 0)
  error = git_path_walk_up(
   &fullpath, base, futils__rmdir_empty_parent, &data);

 if (error == GIT_ITEROVER) {
  git_error_clear();
  error = 0;
 }

 git_buf_dispose(&fullpath);

 return error;
}
