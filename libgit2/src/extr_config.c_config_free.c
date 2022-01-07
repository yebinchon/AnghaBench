
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {size_t length; } ;
struct TYPE_7__ {TYPE_2__ backends; } ;
typedef TYPE_1__ git_config ;
typedef int backend_internal ;


 int GIT_REFCOUNT_DEC (int *,int ) ;
 int backend_internal_free ;
 int git__free (TYPE_1__*) ;
 int git__memzero (TYPE_1__*,int) ;
 int git_vector_free (TYPE_2__*) ;
 int * git_vector_get (TYPE_2__*,size_t) ;

__attribute__((used)) static void config_free(git_config *cfg)
{
 size_t i;
 backend_internal *internal;

 for (i = 0; i < cfg->backends.length; ++i) {
  internal = git_vector_get(&cfg->backends, i);
  GIT_REFCOUNT_DEC(internal, backend_internal_free);
 }

 git_vector_free(&cfg->backends);

 git__memzero(cfg, sizeof(*cfg));
 git__free(cfg);
}
