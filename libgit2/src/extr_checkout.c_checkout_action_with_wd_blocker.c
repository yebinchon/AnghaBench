
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_index_entry ;
struct TYPE_5__ {int status; } ;
typedef TYPE_1__ git_diff_delta ;
typedef int checkout_data ;


 int CHECKOUT_ACTION_IF (int ,int ,int ) ;
 int CHECKOUT_ACTION__NONE ;
 int CONFLICT ;
 int FORCE ;
 int GIT_CHECKOUT_NOTIFY_DIRTY ;





 int GIT_ERROR_CHECK_ERROR (int ) ;
 int NONE ;
 int REMOVE ;
 int REMOVE_AND_UPDATE ;
 int checkout_action_common (int*,int *,TYPE_1__ const*,int const*) ;
 int checkout_notify (int *,int ,TYPE_1__ const*,int const*) ;

__attribute__((used)) static int checkout_action_with_wd_blocker(
 int *action,
 checkout_data *data,
 const git_diff_delta *delta,
 const git_index_entry *wd)
{
 *action = CHECKOUT_ACTION__NONE;

 switch (delta->status) {
 case 128:

  GIT_ERROR_CHECK_ERROR(
   checkout_notify(data, GIT_CHECKOUT_NOTIFY_DIRTY, delta, wd) );
  *action = CHECKOUT_ACTION_IF(FORCE, REMOVE_AND_UPDATE, NONE);
  break;
 case 132:
 case 130:
  *action = CHECKOUT_ACTION_IF(FORCE, REMOVE_AND_UPDATE, CONFLICT);
  break;
 case 131:
  *action = CHECKOUT_ACTION_IF(FORCE, REMOVE, CONFLICT);
  break;
 case 129:

  *action = CHECKOUT_ACTION_IF(FORCE, REMOVE_AND_UPDATE, CONFLICT);
  break;
 default:
  break;
 }

 return checkout_action_common(action, data, delta, wd);
}
