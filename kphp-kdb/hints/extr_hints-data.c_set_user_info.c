
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ user ;
struct lev_hints_set_user_info {int type; int user_id; } ;


 int SET_USER_INFO (int ,int) ;
 TYPE_1__* conv_user_id (int ) ;

int set_user_info (struct lev_hints_set_user_info *E) {
  user *cur_user = conv_user_id (E->user_id);

  if (cur_user == ((void*)0)) {
    return 0;
  }

  cur_user->flags = SET_USER_INFO(cur_user->flags, (E->type & 0xff) - 2);

  return 1;
}
