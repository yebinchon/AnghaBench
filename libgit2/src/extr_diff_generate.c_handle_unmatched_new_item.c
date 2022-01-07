
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_6__ ;
typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;


typedef scalar_t__ git_iterator_status_t ;
struct TYPE_31__ {scalar_t__ mode; int path; } ;
typedef TYPE_3__ git_index_entry ;
struct TYPE_29__ {int deltas; } ;
struct TYPE_32__ {TYPE_1__ base; } ;
typedef TYPE_4__ git_diff_generated ;
struct TYPE_30__ {scalar_t__ mode; } ;
struct TYPE_33__ {TYPE_2__ old_file; scalar_t__ status; } ;
typedef TYPE_5__ git_diff_delta ;
typedef scalar_t__ git_delta_t ;
typedef int git_buf ;
struct TYPE_34__ {TYPE_8__* new_iter; TYPE_3__* nitem; int repo; int oitem; } ;
typedef TYPE_6__ diff_in_progress ;
struct TYPE_35__ {scalar_t__ type; } ;


 scalar_t__ DIFF_FLAG_ISNT_SET (TYPE_4__*,int ) ;
 scalar_t__ DIFF_FLAG_IS_SET (TYPE_4__*,int ) ;
 int DOT_GIT ;
 scalar_t__ GIT_DELTA_ADDED ;
 scalar_t__ GIT_DELTA_CONFLICTED ;
 scalar_t__ GIT_DELTA_IGNORED ;
 scalar_t__ GIT_DELTA_TYPECHANGE ;
 scalar_t__ GIT_DELTA_UNREADABLE ;
 scalar_t__ GIT_DELTA_UNTRACKED ;
 int GIT_DIFF_ENABLE_FAST_UNTRACKED_DIRS ;
 int GIT_DIFF_INCLUDE_IGNORED ;
 int GIT_DIFF_INCLUDE_TYPECHANGE_TREES ;
 int GIT_DIFF_INCLUDE_UNREADABLE_AS_UNTRACKED ;
 int GIT_DIFF_RECURSE_IGNORED_DIRS ;
 int GIT_DIFF_RECURSE_UNTRACKED_DIRS ;
 int GIT_ENOTFOUND ;
 scalar_t__ GIT_FILEMODE_COMMIT ;
 scalar_t__ GIT_FILEMODE_TREE ;
 scalar_t__ GIT_FILEMODE_UNREADABLE ;
 scalar_t__ GIT_ITERATOR_STATUS_EMPTY ;
 scalar_t__ GIT_ITERATOR_STATUS_FILTERED ;
 scalar_t__ GIT_ITERATOR_STATUS_IGNORED ;
 scalar_t__ GIT_ITERATOR_TYPE_WORKDIR ;
 int diff_delta__from_one (TYPE_4__*,scalar_t__,int *,TYPE_3__ const*) ;
 TYPE_5__* diff_delta__last_for_item (TYPE_4__*,TYPE_3__ const*) ;
 int entry_is_prefixed (TYPE_4__*,int ,TYPE_3__ const*) ;
 int git__free (TYPE_5__*) ;
 int git_error_clear () ;
 scalar_t__ git_index_entry_is_conflict (TYPE_3__ const*) ;
 scalar_t__ git_iterator_current_is_ignored (TYPE_8__*) ;
 scalar_t__ git_iterator_current_tree_is_ignored (TYPE_8__*) ;
 scalar_t__ git_iterator_current_workdir_path (int **,TYPE_8__*) ;
 scalar_t__ git_path_contains (int *,int ) ;
 scalar_t__ git_submodule_lookup (int *,int ,int ) ;
 int git_vector_pop (int *) ;
 int iterator_advance (TYPE_3__**,TYPE_8__*) ;
 int iterator_advance_into (TYPE_3__**,TYPE_8__*) ;
 int iterator_advance_over (TYPE_3__**,scalar_t__*,TYPE_8__*) ;

__attribute__((used)) static int handle_unmatched_new_item(
 git_diff_generated *diff, diff_in_progress *info)
{
 int error = 0;
 const git_index_entry *nitem = info->nitem;
 git_delta_t delta_type = GIT_DELTA_UNTRACKED;
 bool contains_oitem;


 contains_oitem = entry_is_prefixed(diff, info->oitem, nitem);


 if (git_index_entry_is_conflict(nitem))
  delta_type = GIT_DELTA_CONFLICTED;


 else if (git_iterator_current_is_ignored(info->new_iter))
  delta_type = GIT_DELTA_IGNORED;

 if (nitem->mode == GIT_FILEMODE_TREE) {
  bool recurse_into_dir = contains_oitem;


  recurse_into_dir = contains_oitem ||
   (delta_type == GIT_DELTA_UNTRACKED &&
    DIFF_FLAG_IS_SET(diff, GIT_DIFF_RECURSE_UNTRACKED_DIRS)) ||
   (delta_type == GIT_DELTA_IGNORED &&
    DIFF_FLAG_IS_SET(diff, GIT_DIFF_RECURSE_IGNORED_DIRS));


  if (recurse_into_dir && !contains_oitem) {
   git_buf *full = ((void*)0);
   if (git_iterator_current_workdir_path(&full, info->new_iter) < 0)
    return -1;
   if (full && git_path_contains(full, DOT_GIT)) {

    recurse_into_dir = 0;
   }
  }




  if (!recurse_into_dir &&
   delta_type == GIT_DELTA_UNTRACKED &&
   DIFF_FLAG_ISNT_SET(diff, GIT_DIFF_ENABLE_FAST_UNTRACKED_DIRS))
  {
   git_diff_delta *last;
   git_iterator_status_t untracked_state;


   if ((error = diff_delta__from_one(diff, delta_type, ((void*)0), nitem)) != 0)
    return error;


   last = diff_delta__last_for_item(diff, nitem);
   if (!last)
    return iterator_advance(&info->nitem, info->new_iter);


   if ((error = iterator_advance_over(
     &info->nitem, &untracked_state, info->new_iter)) < 0)
    return error;


   if (untracked_state == GIT_ITERATOR_STATUS_FILTERED) {
    git_vector_pop(&diff->base.deltas);
    git__free(last);
   }


   if (untracked_state == GIT_ITERATOR_STATUS_IGNORED ||
    untracked_state == GIT_ITERATOR_STATUS_EMPTY) {
    last->status = GIT_DELTA_IGNORED;


    if (DIFF_FLAG_ISNT_SET(diff, GIT_DIFF_INCLUDE_IGNORED)) {
     git_vector_pop(&diff->base.deltas);
     git__free(last);
    }
   }

   return 0;
  }


  if (recurse_into_dir) {
   error = iterator_advance_into(&info->nitem, info->new_iter);


   if (error == GIT_ENOTFOUND) {
    git_error_clear();
    error = iterator_advance(&info->nitem, info->new_iter);
   }

   return error;
  }
 }

 else if (delta_type == GIT_DELTA_IGNORED &&
  DIFF_FLAG_ISNT_SET(diff, GIT_DIFF_RECURSE_IGNORED_DIRS) &&
  git_iterator_current_tree_is_ignored(info->new_iter))

  return iterator_advance(&info->nitem, info->new_iter);

 else if (info->new_iter->type != GIT_ITERATOR_TYPE_WORKDIR) {
  if (delta_type != GIT_DELTA_CONFLICTED)
   delta_type = GIT_DELTA_ADDED;
 }

 else if (nitem->mode == GIT_FILEMODE_COMMIT) {

  if (git_submodule_lookup(((void*)0), info->repo, nitem->path) != 0) {
   git_error_clear();
   delta_type = GIT_DELTA_IGNORED;


   if (contains_oitem) {
    error = iterator_advance_into(&info->nitem, info->new_iter);
    if (error != GIT_ENOTFOUND)
     return error;

    git_error_clear();
    return iterator_advance(&info->nitem, info->new_iter);
   }
  }
 }

 else if (nitem->mode == GIT_FILEMODE_UNREADABLE) {
  if (DIFF_FLAG_IS_SET(diff, GIT_DIFF_INCLUDE_UNREADABLE_AS_UNTRACKED))
   delta_type = GIT_DELTA_UNTRACKED;
  else
   delta_type = GIT_DELTA_UNREADABLE;
 }


 if ((error = diff_delta__from_one(diff, delta_type, ((void*)0), nitem)) != 0)
  return error;




 if (delta_type != GIT_DELTA_IGNORED &&
  DIFF_FLAG_IS_SET(diff, GIT_DIFF_INCLUDE_TYPECHANGE_TREES) &&
  contains_oitem)
 {

  git_diff_delta *last = diff_delta__last_for_item(diff, nitem);
  if (last) {
   last->status = GIT_DELTA_TYPECHANGE;
   last->old_file.mode = GIT_FILEMODE_TREE;
  }
 }

 return iterator_advance(&info->nitem, info->new_iter);
}
