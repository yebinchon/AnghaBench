
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_tree ;
typedef scalar_t__ git_submodule_ignore_t ;
struct TYPE_8__ {int flags; int wd_oid; } ;
typedef TYPE_1__ git_submodule ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_index ;
struct TYPE_9__ {int flags; } ;
typedef TYPE_2__ git_diff_options ;
typedef int git_diff ;


 int GIT_DELTA_UNTRACKED ;
 int GIT_DIFF_INCLUDE_UNTRACKED ;
 TYPE_2__ GIT_DIFF_OPTIONS_INIT ;
 scalar_t__ GIT_SUBMODULE_IGNORE_NONE ;
 int GIT_SUBMODULE_STATUS_IN_WD ;
 unsigned int GIT_SUBMODULE_STATUS_WD_ADDED ;
 unsigned int GIT_SUBMODULE_STATUS_WD_DELETED ;
 unsigned int GIT_SUBMODULE_STATUS_WD_INDEX_MODIFIED ;
 unsigned int GIT_SUBMODULE_STATUS_WD_MODIFIED ;
 unsigned int GIT_SUBMODULE_STATUS_WD_UNINITIALIZED ;
 unsigned int GIT_SUBMODULE_STATUS_WD_UNTRACKED ;
 unsigned int GIT_SUBMODULE_STATUS_WD_WD_MODIFIED ;
 unsigned int GIT_SUBMODULE_STATUS__WD_FLAGS ;
 int GIT_SUBMODULE_STATUS__WD_OID_VALID ;
 int GIT_SUBMODULE_STATUS__WD_SCANNED ;
 int git_diff_free (int *) ;
 scalar_t__ git_diff_index_to_workdir (int **,int *,int *,TYPE_2__*) ;
 size_t git_diff_num_deltas (int *) ;
 size_t git_diff_num_deltas_of_type (int *,int ) ;
 scalar_t__ git_diff_tree_to_index (int **,int *,int *,int *,TYPE_2__*) ;
 int git_error_clear () ;
 int git_oid_equal (int const*,int const*) ;
 scalar_t__ git_repository_head_tree (int **,int *) ;
 int git_repository_index__weakptr (int **,int *) ;
 int * git_submodule_index_id (TYPE_1__*) ;
 int git_tree_free (int *) ;

__attribute__((used)) static void submodule_get_wd_status(
 unsigned int *status,
 git_submodule *sm,
 git_repository *sm_repo,
 git_submodule_ignore_t ign)
{
 const git_oid *index_oid = git_submodule_index_id(sm);
 const git_oid *wd_oid =
  (sm->flags & GIT_SUBMODULE_STATUS__WD_OID_VALID) ? &sm->wd_oid : ((void*)0);
 git_tree *sm_head = ((void*)0);
 git_index *index = ((void*)0);
 git_diff_options opt = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff;

 *status = *status & ~GIT_SUBMODULE_STATUS__WD_FLAGS;

 if (!index_oid) {
  if (wd_oid)
   *status |= GIT_SUBMODULE_STATUS_WD_ADDED;
 }
 else if (!wd_oid) {
  if ((sm->flags & GIT_SUBMODULE_STATUS__WD_SCANNED) != 0 &&
   (sm->flags & GIT_SUBMODULE_STATUS_IN_WD) == 0)
   *status |= GIT_SUBMODULE_STATUS_WD_UNINITIALIZED;
  else
   *status |= GIT_SUBMODULE_STATUS_WD_DELETED;
 }
 else if (!git_oid_equal(index_oid, wd_oid))
  *status |= GIT_SUBMODULE_STATUS_WD_MODIFIED;


 if (!sm_repo)
  return;






 if (ign == GIT_SUBMODULE_IGNORE_NONE)
  opt.flags |= GIT_DIFF_INCLUDE_UNTRACKED;

 (void)git_repository_index__weakptr(&index, sm_repo);


 if (git_repository_head_tree(&sm_head, sm_repo) < 0)
  git_error_clear();
 else {

  if (git_diff_tree_to_index(&diff, sm_repo, sm_head, index, &opt) < 0)
   git_error_clear();
  else {
   if (git_diff_num_deltas(diff) > 0)
    *status |= GIT_SUBMODULE_STATUS_WD_INDEX_MODIFIED;
   git_diff_free(diff);
   diff = ((void*)0);
  }

  git_tree_free(sm_head);
 }


 if (git_diff_index_to_workdir(&diff, sm_repo, index, &opt) < 0)
  git_error_clear();
 else {
  size_t untracked =
   git_diff_num_deltas_of_type(diff, GIT_DELTA_UNTRACKED);

  if (untracked > 0)
   *status |= GIT_SUBMODULE_STATUS_WD_UNTRACKED;

  if (git_diff_num_deltas(diff) != untracked)
   *status |= GIT_SUBMODULE_STATUS_WD_WD_MODIFIED;

  git_diff_free(diff);
  diff = ((void*)0);
 }
}
