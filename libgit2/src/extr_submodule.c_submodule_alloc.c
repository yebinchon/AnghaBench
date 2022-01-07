
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * branch; int * repo; int fetch_recurse_default; int fetch_recurse; int update_default; int update; int ignore_default; int ignore; int name; int path; } ;
typedef TYPE_1__ git_submodule ;
typedef int git_repository ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int GIT_ERROR_SUBMODULE ;
 int GIT_REFCOUNT_INC (TYPE_1__*) ;
 int GIT_SUBMODULE_IGNORE_NONE ;
 int GIT_SUBMODULE_RECURSE_NO ;
 int GIT_SUBMODULE_UPDATE_CHECKOUT ;
 TYPE_1__* git__calloc (int,int) ;
 int git__free (TYPE_1__*) ;
 int git__strdup (char const*) ;
 int git_error_set (int ,char*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int submodule_alloc(
 git_submodule **out, git_repository *repo, const char *name)
{
 size_t namelen;
 git_submodule *sm;

 if (!name || !(namelen = strlen(name))) {
  git_error_set(GIT_ERROR_SUBMODULE, "invalid submodule name");
  return -1;
 }

 sm = git__calloc(1, sizeof(git_submodule));
 GIT_ERROR_CHECK_ALLOC(sm);

 sm->name = sm->path = git__strdup(name);
 if (!sm->name) {
  git__free(sm);
  return -1;
 }

 GIT_REFCOUNT_INC(sm);
 sm->ignore = sm->ignore_default = GIT_SUBMODULE_IGNORE_NONE;
 sm->update = sm->update_default = GIT_SUBMODULE_UPDATE_CHECKOUT;
 sm->fetch_recurse = sm->fetch_recurse_default = GIT_SUBMODULE_RECURSE_NO;
 sm->repo = repo;
 sm->branch = ((void*)0);

 *out = sm;
 return 0;
}
