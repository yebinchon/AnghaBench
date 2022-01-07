
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* unlock ) (TYPE_1__*,int) ;} ;
typedef TYPE_1__ git_config_backend ;
struct TYPE_9__ {int backends; } ;
typedef TYPE_2__ git_config ;
struct TYPE_10__ {TYPE_1__* backend; } ;
typedef TYPE_3__ backend_internal ;


 int GIT_ERROR_CONFIG ;
 int assert (TYPE_2__*) ;
 int git_error_set (int ,char*) ;
 TYPE_3__* git_vector_get (int *,int ) ;
 int stub1 (TYPE_1__*,int) ;

int git_config_unlock(git_config *cfg, int commit)
{
 git_config_backend *backend;
 backend_internal *internal;

 assert(cfg);

 internal = git_vector_get(&cfg->backends, 0);
 if (!internal || !internal->backend) {
  git_error_set(GIT_ERROR_CONFIG, "cannot lock; the config has no backends");
  return -1;
 }

 backend = internal->backend;

 return backend->unlock(backend, commit);
}
