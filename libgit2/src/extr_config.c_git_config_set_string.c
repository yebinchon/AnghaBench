
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* set ) (TYPE_1__*,char const*,char const*) ;} ;
typedef TYPE_1__ git_config_backend ;
typedef int git_config ;


 int BACKEND_USE_SET ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_CONFIG ;
 int * GIT_REFCOUNT_OWNER (int *) ;
 scalar_t__ get_backend_for_use (TYPE_1__**,int *,char const*,int ) ;
 int git_error_set (int ,char*) ;
 int git_repository__configmap_lookup_cache_clear (int *) ;
 int stub1 (TYPE_1__*,char const*,char const*) ;

int git_config_set_string(git_config *cfg, const char *name, const char *value)
{
 int error;
 git_config_backend *backend;

 if (!value) {
  git_error_set(GIT_ERROR_CONFIG, "the value to set cannot be NULL");
  return -1;
 }

 if (get_backend_for_use(&backend, cfg, name, BACKEND_USE_SET) < 0)
  return GIT_ENOTFOUND;

 error = backend->set(backend, name, value);

 if (!error && GIT_REFCOUNT_OWNER(cfg) != ((void*)0))
  git_repository__configmap_lookup_cache_clear(GIT_REFCOUNT_OWNER(cfg));

 return error;
}
