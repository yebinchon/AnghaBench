
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int git_diff_generated ;
struct TYPE_12__ {int mode; } ;
struct TYPE_13__ {TYPE_1__ new_file; int status; } ;
typedef TYPE_2__ git_diff_delta ;
typedef int git_delta_t ;
struct TYPE_14__ {int old_iter; TYPE_4__* oitem; int new_iter; TYPE_4__* nitem; } ;
typedef TYPE_3__ diff_in_progress ;
struct TYPE_15__ {int mode; } ;


 scalar_t__ DIFF_FLAG_ISNT_SET (int *,int ) ;
 scalar_t__ DIFF_FLAG_IS_SET (int *,int ) ;
 int GIT_DELTA_CONFLICTED ;
 int GIT_DELTA_DELETED ;
 int GIT_DELTA_TYPECHANGE ;
 int GIT_DIFF_INCLUDE_TYPECHANGE_TREES ;
 int GIT_DIFF_RECURSE_UNTRACKED_DIRS ;
 int GIT_FILEMODE_TREE ;
 scalar_t__ S_ISDIR (int ) ;
 int diff_delta__from_one (int *,int ,TYPE_4__*,int *) ;
 TYPE_2__* diff_delta__last_for_item (int *,TYPE_4__*) ;
 scalar_t__ entry_is_prefixed (int *,TYPE_4__*,TYPE_4__*) ;
 scalar_t__ git_index_entry_is_conflict (TYPE_4__*) ;
 int iterator_advance (TYPE_4__**,int ) ;

__attribute__((used)) static int handle_unmatched_old_item(
 git_diff_generated *diff, diff_in_progress *info)
{
 git_delta_t delta_type = GIT_DELTA_DELETED;
 int error;


 if (git_index_entry_is_conflict(info->oitem))
  delta_type = GIT_DELTA_CONFLICTED;

 if ((error = diff_delta__from_one(diff, delta_type, info->oitem, ((void*)0))) < 0)
  return error;




 if (DIFF_FLAG_IS_SET(diff, GIT_DIFF_INCLUDE_TYPECHANGE_TREES) &&
  entry_is_prefixed(diff, info->nitem, info->oitem))
 {

  git_diff_delta *last = diff_delta__last_for_item(diff, info->oitem);
  if (last) {
   last->status = GIT_DELTA_TYPECHANGE;
   last->new_file.mode = GIT_FILEMODE_TREE;
  }





  if (S_ISDIR(info->nitem->mode) &&
   DIFF_FLAG_ISNT_SET(diff, GIT_DIFF_RECURSE_UNTRACKED_DIRS))
   return iterator_advance(&info->nitem, info->new_iter);
 }

 return iterator_advance(&info->oitem, info->old_iter);
}
