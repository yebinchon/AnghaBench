
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_submodule ;
struct TYPE_3__ {int repo; } ;
typedef TYPE_1__ checkout_data ;


 unsigned int GIT_SUBMODULE_STATUS_IN_CONFIG ;
 int git_submodule_free (int *) ;
 scalar_t__ git_submodule_location (unsigned int*,int *) ;
 scalar_t__ git_submodule_lookup (int **,int ,char const*) ;

__attribute__((used)) static bool submodule_is_config_only(
 checkout_data *data,
 const char *path)
{
 git_submodule *sm = ((void*)0);
 unsigned int sm_loc = 0;
 bool rval = 0;

 if (git_submodule_lookup(&sm, data->repo, path) < 0)
  return 1;

 if (git_submodule_location(&sm_loc, sm) < 0 ||
  sm_loc == GIT_SUBMODULE_STATUS_IN_CONFIG)
  rval = 1;

 git_submodule_free(sm);

 return rval;
}
