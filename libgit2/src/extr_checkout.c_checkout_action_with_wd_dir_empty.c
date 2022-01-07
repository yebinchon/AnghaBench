
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_diff_delta ;
typedef int checkout_data ;


 int CHECKOUT_ACTION__NONE ;
 int CHECKOUT_ACTION__REMOVE ;
 int checkout_action_no_wd (int*,int *,int const*) ;

__attribute__((used)) static int checkout_action_with_wd_dir_empty(
 int *action,
 checkout_data *data,
 const git_diff_delta *delta)
{
 int error = checkout_action_no_wd(action, data, delta);


 if (error == 0 && *action != CHECKOUT_ACTION__NONE)
  *action |= CHECKOUT_ACTION__REMOVE;

 return error;
}
