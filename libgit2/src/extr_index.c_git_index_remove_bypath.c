
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index ;


 int GIT_ENOTFOUND ;
 int assert (int) ;
 int git_error_clear () ;
 int git_index_remove (int *,char const*,int ) ;
 int index_conflict_to_reuc (int *,char const*) ;

int git_index_remove_bypath(git_index *index, const char *path)
{
 int ret;

 assert(index && path);

 if (((ret = git_index_remove(index, path, 0)) < 0 &&
  ret != GIT_ENOTFOUND) ||
  ((ret = index_conflict_to_reuc(index, path)) < 0 &&
  ret != GIT_ENOTFOUND))
  return ret;

 if (ret == GIT_ENOTFOUND)
  git_error_clear();

 return 0;
}
