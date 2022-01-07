
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int git_submodule_ignore_t ;
struct TYPE_11__ {unsigned int flags; int wd_oid; int index_oid; int head_oid; TYPE_1__* repo; int ignore; } ;
typedef TYPE_2__ git_submodule ;
typedef int git_repository ;
typedef int git_oid ;
struct TYPE_10__ {int * submodule_cache; } ;


 int GIT_SUBMODULE_IGNORE_ALL ;
 int GIT_SUBMODULE_IGNORE_DIRTY ;
 int GIT_SUBMODULE_IGNORE_UNSPECIFIED ;
 unsigned int GIT_SUBMODULE_STATUS__CLEAR_INTERNAL (unsigned int) ;
 int GIT_SUBMODULE_STATUS__HEAD_OID_VALID ;
 int GIT_SUBMODULE_STATUS__INDEX_OID_VALID ;
 unsigned int GIT_SUBMODULE_STATUS__IN_FLAGS ;
 int GIT_SUBMODULE_STATUS__WD_OID_VALID ;
 int git_error_clear () ;
 int git_repository_free (int *) ;
 scalar_t__ git_submodule_open (int **,TYPE_2__*) ;
 scalar_t__ git_submodule_open_bare (int **,TYPE_2__*) ;
 int submodule_copy_oid_maybe (int *,int *,int) ;
 int submodule_get_index_status (unsigned int*,TYPE_2__*) ;
 int submodule_get_wd_status (unsigned int*,TYPE_2__*,int *,int ) ;
 scalar_t__ submodule_update_head (TYPE_2__*) ;
 scalar_t__ submodule_update_index (TYPE_2__*) ;

int git_submodule__status(
 unsigned int *out_status,
 git_oid *out_head_id,
 git_oid *out_index_id,
 git_oid *out_wd_id,
 git_submodule *sm,
 git_submodule_ignore_t ign)
{
 unsigned int status;
 git_repository *smrepo = ((void*)0);

 if (ign == GIT_SUBMODULE_IGNORE_UNSPECIFIED)
  ign = sm->ignore;


 if (ign == GIT_SUBMODULE_IGNORE_ALL) {
  *out_status = (sm->flags & GIT_SUBMODULE_STATUS__IN_FLAGS);
  return 0;
 }
 if (sm->repo->submodule_cache == ((void*)0)) {

  if (submodule_update_index(sm) < 0)
   return -1;


  if (submodule_update_head(sm) < 0)
   return -1;
 }


 if (ign == GIT_SUBMODULE_IGNORE_DIRTY) {

  if (git_submodule_open_bare(&smrepo, sm) < 0)
   git_error_clear();
  else
   git_repository_free(smrepo);
  smrepo = ((void*)0);
 } else if (git_submodule_open(&smrepo, sm) < 0) {
  git_error_clear();
  smrepo = ((void*)0);
 }

 status = GIT_SUBMODULE_STATUS__CLEAR_INTERNAL(sm->flags);

 submodule_get_index_status(&status, sm);
 submodule_get_wd_status(&status, sm, smrepo, ign);

 git_repository_free(smrepo);

 *out_status = status;

 submodule_copy_oid_maybe(out_head_id, &sm->head_oid,
  (sm->flags & GIT_SUBMODULE_STATUS__HEAD_OID_VALID) != 0);
 submodule_copy_oid_maybe(out_index_id, &sm->index_oid,
  (sm->flags & GIT_SUBMODULE_STATUS__INDEX_OID_VALID) != 0);
 submodule_copy_oid_maybe(out_wd_id, &sm->wd_oid,
  (sm->flags & GIT_SUBMODULE_STATUS__WD_OID_VALID) != 0);

 return 0;
}
