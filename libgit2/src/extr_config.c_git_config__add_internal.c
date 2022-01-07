
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int git_config_level_t ;
struct TYPE_10__ {int backends; } ;
typedef TYPE_2__ git_config ;
struct TYPE_11__ {TYPE_1__* backend; } ;
typedef TYPE_3__ backend_internal ;
struct TYPE_9__ {TYPE_2__* cfg; } ;


 int GIT_REFCOUNT_INC (TYPE_3__*) ;
 int duplicate_level ;
 int git_vector_insert_sorted (int *,TYPE_3__*,int *) ;
 int git_vector_sort (int *) ;
 int try_remove_existing_backend (TYPE_2__*,int ) ;

__attribute__((used)) static int git_config__add_internal(
 git_config *cfg,
 backend_internal *internal,
 git_config_level_t level,
 int force)
{
 int result;


 if (force)
  try_remove_existing_backend(cfg, level);

 if ((result = git_vector_insert_sorted(&cfg->backends,
   internal, &duplicate_level)) < 0)
  return result;

 git_vector_sort(&cfg->backends);
 internal->backend->cfg = cfg;

 GIT_REFCOUNT_INC(internal);

 return 0;
}
