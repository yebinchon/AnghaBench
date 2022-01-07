
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_strarray ;
typedef int git_pathspec ;


 int GIT_ERROR_CHECK_ALLOC (int *) ;
 int GIT_REFCOUNT_INC (int *) ;
 int git__free (int *) ;
 int * git__malloc (int) ;
 int git_pathspec__init (int *,int const*) ;

int git_pathspec_new(git_pathspec **out, const git_strarray *pathspec)
{
 int error = 0;
 git_pathspec *ps = git__malloc(sizeof(git_pathspec));
 GIT_ERROR_CHECK_ALLOC(ps);

 if ((error = git_pathspec__init(ps, pathspec)) < 0) {
  git__free(ps);
  return error;
 }

 GIT_REFCOUNT_INC(ps);
 *out = ps;
 return 0;
}
