
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int repo; } ;
typedef TYPE_1__ git_submodule ;
typedef int git_index ;


 int GIT_MODULES_FILE ;
 int assert (TYPE_1__*) ;
 int git_index_add_bypath (int *,int ) ;
 int git_repository_index__weakptr (int **,int ) ;
 int git_submodule_add_to_index (TYPE_1__*,int) ;

int git_submodule_add_finalize(git_submodule *sm)
{
 int error;
 git_index *index;

 assert(sm);

 if ((error = git_repository_index__weakptr(&index, sm->repo)) < 0 ||
  (error = git_index_add_bypath(index, GIT_MODULES_FILE)) < 0)
  return error;

 return git_submodule_add_to_index(sm, 1);
}
