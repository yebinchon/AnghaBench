
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_pathspec ;


 int GIT_REFCOUNT_DEC (int *,int ) ;
 int pathspec_free ;

void git_pathspec_free(git_pathspec *ps)
{
 if (!ps)
  return;
 GIT_REFCOUNT_DEC(ps, pathspec_free);
}
