
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 int GIT_PATH_MAX ;
 int git_buf_sets (TYPE_1__*,char*) ;
 scalar_t__ git_path_dirname_r (TYPE_1__*,int ) ;
 int git_path_join_unrooted (TYPE_1__*,char const*,char const*,int *) ;
 int git_path_to_dir (TYPE_1__*) ;
 int * p_realpath (int ,char*) ;

int git_path_find_dir(git_buf *dir, const char *path, const char *base)
{
 int error = git_path_join_unrooted(dir, path, base, ((void*)0));

 if (!error) {
  char buf[GIT_PATH_MAX];
  if (p_realpath(dir->ptr, buf) != ((void*)0))
   error = git_buf_sets(dir, buf);
 }


 if (!error)
  error = (git_path_dirname_r(dir, dir->ptr) < 0) ? -1 : 0;

 if (!error)
  error = git_path_to_dir(dir);

 return error;
}
