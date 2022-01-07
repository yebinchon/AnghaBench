
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int flags; int repo; int name; } ;
typedef TYPE_1__ git_submodule ;
typedef int git_config ;


 int GIT_ENOTFOUND ;
 int GIT_SUBMODULE_STATUS_IN_WD ;
 int GIT_SUBMODULE_STATUS__WD_FLAGS ;
 int GIT_SUBMODULE_STATUS__WD_OID_VALID ;
 int GIT_UNUSED (int) ;
 int assert (TYPE_1__*) ;
 int git_config_free (int *) ;
 int git_repository_is_bare (int ) ;
 int git_submodule_name_is_valid (int ,int ,int ) ;
 int gitmodules_snapshot (int **,int ) ;
 int submodule_load_from_wd_lite (TYPE_1__*) ;
 int submodule_read_config (TYPE_1__*,int *) ;
 int submodule_update_head (TYPE_1__*) ;
 int submodule_update_index (TYPE_1__*) ;

int git_submodule_reload(git_submodule *sm, int force)
{
 int error = 0, isvalid;
 git_config *mods;

 GIT_UNUSED(force);

 assert(sm);

 isvalid = git_submodule_name_is_valid(sm->repo, sm->name, 0);
 if (isvalid <= 0) {

  return isvalid;
 }

 if (!git_repository_is_bare(sm->repo)) {

  if ((error = gitmodules_snapshot(&mods, sm->repo)) < 0 && error != GIT_ENOTFOUND)
   return error;
  if (mods != ((void*)0)) {
   error = submodule_read_config(sm, mods);
   git_config_free(mods);

   if (error < 0)
    return error;
  }


  sm->flags &=
   ~(GIT_SUBMODULE_STATUS_IN_WD |
     GIT_SUBMODULE_STATUS__WD_OID_VALID |
     GIT_SUBMODULE_STATUS__WD_FLAGS);

  error = submodule_load_from_wd_lite(sm);
 }

 if (error == 0 && (error = submodule_update_index(sm)) == 0)
  error = submodule_update_head(sm);

 return error;
}
