
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int name; } ;
typedef TYPE_1__ git_submodule ;
typedef int git_strmap ;
typedef int git_repository ;


 int GIT_REFCOUNT_INC (TYPE_1__*) ;
 TYPE_1__* git_strmap_get (int *,char const*) ;
 int git_strmap_set (int *,int ,TYPE_1__*) ;
 int git_submodule_free (TYPE_1__*) ;
 int submodule_alloc (TYPE_1__**,int *,char const*) ;

__attribute__((used)) static int submodule_get_or_create(git_submodule **out, git_repository *repo, git_strmap *map, const char *name)
{
 git_submodule *sm = ((void*)0);
 int error;

 if ((sm = git_strmap_get(map, name)) != ((void*)0))
  goto done;


 if ((error = submodule_alloc(&sm, repo, name)) < 0)
  return error;

 if ((error = git_strmap_set(map, sm->name, sm)) < 0) {
  git_submodule_free(sm);
  return error;
 }

done:
 GIT_REFCOUNT_INC(sm);
 *out = sm;
 return 0;
}
