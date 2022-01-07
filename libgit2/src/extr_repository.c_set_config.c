
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int _config; } ;
typedef TYPE_1__ git_repository ;
typedef int git_config ;


 int GIT_REFCOUNT_INC (int *) ;
 int GIT_REFCOUNT_OWN (int *,TYPE_1__*) ;
 int * git__swap (int ,int *) ;
 int git_config_free (int *) ;
 int git_repository__configmap_lookup_cache_clear (TYPE_1__*) ;

__attribute__((used)) static void set_config(git_repository *repo, git_config *config)
{
 if (config) {
  GIT_REFCOUNT_OWN(config, repo);
  GIT_REFCOUNT_INC(config);
 }

 if ((config = git__swap(repo->_config, config)) != ((void*)0)) {
  GIT_REFCOUNT_OWN(config, ((void*)0));
  git_config_free(config);
 }

 git_repository__configmap_lookup_cache_clear(repo);
}
