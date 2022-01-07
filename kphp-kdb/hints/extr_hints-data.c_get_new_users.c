
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int currId; } ;


 int index_users ;
 TYPE_1__ user_table ;

int get_new_users (void) {
  return user_table.currId - 1 - index_users;
}
