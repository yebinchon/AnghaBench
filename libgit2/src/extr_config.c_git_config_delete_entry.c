
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* del ) (TYPE_1__*,char const*) ;} ;
typedef TYPE_1__ git_config_backend ;
typedef int git_config ;


 int BACKEND_USE_DELETE ;
 int GIT_ENOTFOUND ;
 scalar_t__ get_backend_for_use (TYPE_1__**,int *,char const*,int ) ;
 int stub1 (TYPE_1__*,char const*) ;

int git_config_delete_entry(git_config *cfg, const char *name)
{
 git_config_backend *backend;

 if (get_backend_for_use(&backend, cfg, name, BACKEND_USE_DELETE) < 0)
  return GIT_ENOTFOUND;

 return backend->del(backend, name);
}
