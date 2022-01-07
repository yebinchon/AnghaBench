
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int datatype; int * pathspec; int pool; } ;
typedef TYPE_1__ git_pathspec_match_list ;
typedef int git_pathspec ;


 int GIT_REFCOUNT_INC (int *) ;
 TYPE_1__* git__calloc (int,int) ;
 int git_pool_init (int *,int) ;

__attribute__((used)) static git_pathspec_match_list *pathspec_match_alloc(
 git_pathspec *ps, int datatype)
{
 git_pathspec_match_list *m = git__calloc(1, sizeof(git_pathspec_match_list));
 if (!m)
  return ((void*)0);

 git_pool_init(&m->pool, 1);





 GIT_REFCOUNT_INC(ps);
 m->pathspec = ps;
 m->datatype = datatype;

 return m;
}
