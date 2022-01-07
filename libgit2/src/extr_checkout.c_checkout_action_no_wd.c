
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int mode; } ;
struct TYPE_7__ {int status; TYPE_1__ new_file; } ;
typedef TYPE_2__ git_diff_delta ;
typedef int checkout_data ;


 int CHECKOUT_ACTION_IF (int ,int ,int ) ;
 int CHECKOUT_ACTION__NONE ;
 int CONFLICT ;
 int GIT_CHECKOUT_NOTIFY_DIRTY ;





 int GIT_FILEMODE_TREE ;
 int NONE ;
 int RECREATE_MISSING ;
 int REMOVE ;
 int SAFE ;
 int UPDATE_BLOB ;
 int checkout_action_common (int*,int *,TYPE_2__ const*,int *) ;
 int checkout_notify (int *,int ,TYPE_2__ const*,int *) ;

__attribute__((used)) static int checkout_action_no_wd(
 int *action,
 checkout_data *data,
 const git_diff_delta *delta)
{
 int error = 0;

 *action = CHECKOUT_ACTION__NONE;

 switch (delta->status) {
 case 128:
  error = checkout_notify(data, GIT_CHECKOUT_NOTIFY_DIRTY, delta, ((void*)0));
  if (error)
   return error;
  *action = CHECKOUT_ACTION_IF(RECREATE_MISSING, UPDATE_BLOB, NONE);
  break;
 case 132:
  *action = CHECKOUT_ACTION_IF(SAFE, UPDATE_BLOB, NONE);
  break;
 case 130:
  *action = CHECKOUT_ACTION_IF(RECREATE_MISSING, UPDATE_BLOB, CONFLICT);
  break;
 case 129:
  if (delta->new_file.mode == GIT_FILEMODE_TREE)
   *action = CHECKOUT_ACTION_IF(SAFE, UPDATE_BLOB, NONE);
  break;
 case 131:
  *action = CHECKOUT_ACTION_IF(SAFE, REMOVE, NONE);
  break;
 default:
  break;
 }

 return checkout_action_common(action, data, delta, ((void*)0));
}
