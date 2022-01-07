
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ mode; } ;
typedef TYPE_2__ git_index_entry ;
struct TYPE_11__ {scalar_t__ mode; } ;
struct TYPE_13__ {TYPE_1__ new_file; } ;
typedef TYPE_3__ git_diff_delta ;
typedef int git_checkout_notify_t ;
struct TYPE_14__ {int strategy; } ;
typedef TYPE_4__ checkout_data ;


 int CHECKOUT_ACTION__CONFLICT ;
 int CHECKOUT_ACTION__REMOVE ;
 int CHECKOUT_ACTION__UPDATE_BLOB ;
 int CHECKOUT_ACTION__UPDATE_SUBMODULE ;
 int GIT_CHECKOUT_NOTIFY_CONFLICT ;
 int GIT_CHECKOUT_NOTIFY_NONE ;
 int GIT_CHECKOUT_NOTIFY_UPDATED ;
 int GIT_CHECKOUT_UPDATE_ONLY ;
 scalar_t__ GIT_FILEMODE_LINK ;
 scalar_t__ GIT_PERMS_IS_EXEC (scalar_t__) ;
 scalar_t__ S_ISGITLINK (scalar_t__) ;
 int checkout_notify (TYPE_4__*,int ,TYPE_3__ const*,TYPE_2__ const*) ;

__attribute__((used)) static int checkout_action_common(
 int *action,
 checkout_data *data,
 const git_diff_delta *delta,
 const git_index_entry *wd)
{
 git_checkout_notify_t notify = GIT_CHECKOUT_NOTIFY_NONE;

 if ((data->strategy & GIT_CHECKOUT_UPDATE_ONLY) != 0)
  *action = (*action & ~CHECKOUT_ACTION__REMOVE);

 if ((*action & CHECKOUT_ACTION__UPDATE_BLOB) != 0) {
  if (S_ISGITLINK(delta->new_file.mode))
   *action = (*action & ~CHECKOUT_ACTION__UPDATE_BLOB) |
    CHECKOUT_ACTION__UPDATE_SUBMODULE;


  if (delta->new_file.mode == GIT_FILEMODE_LINK && wd != ((void*)0))
   *action |= CHECKOUT_ACTION__REMOVE;


  if (wd &&
   GIT_PERMS_IS_EXEC(wd->mode) !=
   GIT_PERMS_IS_EXEC(delta->new_file.mode))
    *action |= CHECKOUT_ACTION__REMOVE;

  notify = GIT_CHECKOUT_NOTIFY_UPDATED;
 }

 if ((*action & CHECKOUT_ACTION__CONFLICT) != 0)
  notify = GIT_CHECKOUT_NOTIFY_CONFLICT;

 return checkout_notify(data, notify, delta, wd);
}
