
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int git_iterator ;
struct TYPE_12__ {int path; int mode; } ;
typedef TYPE_1__ git_index_entry ;
struct TYPE_15__ {int mode; } ;
struct TYPE_14__ {int mode; } ;
struct TYPE_13__ {int status; TYPE_6__ new_file; TYPE_5__ old_file; } ;
typedef TYPE_2__ git_diff_delta ;
typedef int checkout_data ;


 int CHECKOUT_ACTION_IF (int ,int ,int ) ;
 int CHECKOUT_ACTION__NONE ;
 int CHECKOUT_ACTION__UPDATE_BLOB ;
 int CONFLICT ;
 int DONT_OVERWRITE_IGNORED ;
 int FORCE ;
 int GIT_CHECKOUT_NOTIFY_DIRTY ;





 int GIT_ERROR_CHECK_ERROR (int ) ;
 int GIT_FILEMODE_COMMIT ;
 int GIT_FILEMODE_TREE ;
 int NONE ;
 int REMOVE ;
 int REMOVE_AND_UPDATE ;
 int SAFE ;
 int UPDATE_BLOB ;
 int checkout_action_common (int*,int *,TYPE_2__ const*,TYPE_1__ const*) ;
 int checkout_is_workdir_modified (int *,TYPE_5__*,TYPE_6__*,TYPE_1__ const*) ;
 int checkout_notify (int *,int ,TYPE_2__ const*,TYPE_1__ const*) ;
 int git_iterator_current_is_ignored (int *) ;
 int submodule_is_config_only (int *,int ) ;

__attribute__((used)) static int checkout_action_with_wd(
 int *action,
 checkout_data *data,
 const git_diff_delta *delta,
 git_iterator *workdir,
 const git_index_entry *wd)
{
 *action = CHECKOUT_ACTION__NONE;

 switch (delta->status) {
 case 128:
  if (checkout_is_workdir_modified(data, &delta->old_file, &delta->new_file, wd)) {
   GIT_ERROR_CHECK_ERROR(
    checkout_notify(data, GIT_CHECKOUT_NOTIFY_DIRTY, delta, wd) );
   *action = CHECKOUT_ACTION_IF(FORCE, UPDATE_BLOB, NONE);
  }
  break;
 case 132:
  if (git_iterator_current_is_ignored(workdir))
   *action = CHECKOUT_ACTION_IF(DONT_OVERWRITE_IGNORED, CONFLICT, UPDATE_BLOB);
  else
   *action = CHECKOUT_ACTION_IF(FORCE, UPDATE_BLOB, CONFLICT);
  break;
 case 131:
  if (checkout_is_workdir_modified(data, &delta->old_file, &delta->new_file, wd))
   *action = CHECKOUT_ACTION_IF(FORCE, REMOVE, CONFLICT);
  else
   *action = CHECKOUT_ACTION_IF(SAFE, REMOVE, NONE);
  break;
 case 130:
  if (wd->mode != GIT_FILEMODE_COMMIT &&
   checkout_is_workdir_modified(data, &delta->old_file, &delta->new_file, wd))
   *action = CHECKOUT_ACTION_IF(FORCE, UPDATE_BLOB, CONFLICT);
  else
   *action = CHECKOUT_ACTION_IF(SAFE, UPDATE_BLOB, NONE);
  break;
 case 129:
  if (delta->old_file.mode == GIT_FILEMODE_TREE) {
   if (wd->mode == GIT_FILEMODE_TREE)



    *action = CHECKOUT_ACTION_IF(SAFE, UPDATE_BLOB, NONE);
   else if (wd->mode == GIT_FILEMODE_COMMIT) {



    if (submodule_is_config_only(data, wd->path))
     *action = CHECKOUT_ACTION_IF(SAFE, UPDATE_BLOB, NONE);
    else
     *action = CHECKOUT_ACTION_IF(FORCE, REMOVE_AND_UPDATE, CONFLICT);
   } else
    *action = CHECKOUT_ACTION_IF(FORCE, REMOVE, CONFLICT);
  }
  else if (checkout_is_workdir_modified(data, &delta->old_file, &delta->new_file, wd))
   *action = CHECKOUT_ACTION_IF(FORCE, REMOVE_AND_UPDATE, CONFLICT);
  else
   *action = CHECKOUT_ACTION_IF(SAFE, REMOVE_AND_UPDATE, NONE);


  if (delta->new_file.mode == GIT_FILEMODE_TREE)
   *action = (*action & ~CHECKOUT_ACTION__UPDATE_BLOB);
  break;
 default:
  break;
 }

 return checkout_action_common(action, data, delta, wd);
}
