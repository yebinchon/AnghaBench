
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int user_cnt; } ;
struct TYPE_3__ {int flags; } ;


 int GET_USER_INFO (int ) ;
 int SET_USER_INFO (int ,int) ;
 TYPE_2__ header ;
 int indexed_users ;
 TYPE_1__* users ;

void update_user_info (void) {
  int i;
  for (i = 1; i <= header.user_cnt; i++) {
    if (GET_USER_INFO (users[i].flags) != 1) {
      users[i].flags = SET_USER_INFO (users[i].flags, -1);
    } else {
      indexed_users++;
    }
  }
}
