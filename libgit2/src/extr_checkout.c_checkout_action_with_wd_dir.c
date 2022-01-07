
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_iterator ;
typedef int git_index_entry ;
struct TYPE_8__ {int mode; } ;
struct TYPE_7__ {int mode; } ;
struct TYPE_9__ {int status; TYPE_2__ new_file; TYPE_1__ old_file; } ;
typedef TYPE_3__ git_diff_delta ;
typedef int checkout_data ;


 int CHECKOUT_ACTION_IF (int ,int ,int ) ;
 int CHECKOUT_ACTION__NONE ;
 int CONFLICT ;
 int DONT_OVERWRITE_IGNORED ;
 int FORCE ;
 int GIT_CHECKOUT_NOTIFY_DIRTY ;
 int GIT_CHECKOUT_NOTIFY_UNTRACKED ;





 int GIT_ERROR_CHECK_ERROR (int ) ;
 int GIT_FILEMODE_COMMIT ;
 int GIT_FILEMODE_TREE ;
 int NONE ;
 int REMOVE_AND_UPDATE ;
 int SAFE ;
 int UPDATE_BLOB ;
 int checkout_action_common (int*,int *,TYPE_3__ const*,int const*) ;
 int checkout_notify (int *,int ,TYPE_3__ const*,int const*) ;
 int git_iterator_current_is_ignored (int *) ;

__attribute__((used)) static int checkout_action_with_wd_dir(
 int *action,
 checkout_data *data,
 const git_diff_delta *delta,
 git_iterator *workdir,
 const git_index_entry *wd)
{
 *action = CHECKOUT_ACTION__NONE;

 switch (delta->status) {
 case 128:
  GIT_ERROR_CHECK_ERROR(
   checkout_notify(data, GIT_CHECKOUT_NOTIFY_DIRTY, delta, ((void*)0)));
  GIT_ERROR_CHECK_ERROR(
   checkout_notify(data, GIT_CHECKOUT_NOTIFY_UNTRACKED, ((void*)0), wd));
  *action = CHECKOUT_ACTION_IF(FORCE, REMOVE_AND_UPDATE, NONE);
  break;
 case 132:
 case 130:
  if (delta->old_file.mode == GIT_FILEMODE_COMMIT)
                                                 ;
  else if (delta->new_file.mode != GIT_FILEMODE_TREE)
   *action = git_iterator_current_is_ignored(workdir) ?
    CHECKOUT_ACTION_IF(DONT_OVERWRITE_IGNORED, CONFLICT, REMOVE_AND_UPDATE) :
    CHECKOUT_ACTION_IF(FORCE, REMOVE_AND_UPDATE, CONFLICT);
  break;
 case 131:
  if (delta->old_file.mode != GIT_FILEMODE_TREE)
   GIT_ERROR_CHECK_ERROR(
    checkout_notify(data, GIT_CHECKOUT_NOTIFY_UNTRACKED, ((void*)0), wd));
  break;
 case 129:
  if (delta->old_file.mode == GIT_FILEMODE_TREE) {






   *action = CHECKOUT_ACTION_IF(SAFE, UPDATE_BLOB, NONE);
  }
  else if (delta->new_file.mode != GIT_FILEMODE_TREE)

   *action = CHECKOUT_ACTION_IF(FORCE, REMOVE_AND_UPDATE, CONFLICT);
  break;
 default:
  break;
 }

 return checkout_action_common(action, data, delta, wd);
}
