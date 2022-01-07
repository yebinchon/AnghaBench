
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_strarray ;
struct TYPE_5__ {int pool; int pathspec; int prefix; } ;
typedef TYPE_1__ git_pathspec ;


 int git_pathspec__clear (TYPE_1__*) ;
 int git_pathspec__vinit (int *,int const*,int *) ;
 int git_pathspec_prefix (int const*) ;
 int git_pool_init (int *,int) ;
 int memset (TYPE_1__*,int ,int) ;

int git_pathspec__init(git_pathspec *ps, const git_strarray *paths)
{
 int error = 0;

 memset(ps, 0, sizeof(*ps));

 ps->prefix = git_pathspec_prefix(paths);
 git_pool_init(&ps->pool, 1);

 if ((error = git_pathspec__vinit(&ps->pathspec, paths, &ps->pool)) < 0)
  git_pathspec__clear(ps);

 return error;
}
