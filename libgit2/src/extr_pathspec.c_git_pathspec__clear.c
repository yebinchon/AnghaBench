
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; int pathspec; int prefix; } ;
typedef TYPE_1__ git_pathspec ;


 int git__free (int ) ;
 int git_pathspec__vfree (int *) ;
 int git_pool_clear (int *) ;
 int memset (TYPE_1__*,int ,int) ;

void git_pathspec__clear(git_pathspec *ps)
{
 git__free(ps->prefix);
 git_pathspec__vfree(&ps->pathspec);
 git_pool_clear(&ps->pool);
 memset(ps, 0, sizeof(*ps));
}
