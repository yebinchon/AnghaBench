
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int user_id; scalar_t__ state; scalar_t__ lru; } ;
typedef TYPE_1__ loaded_user_t ;


 TYPE_1__* LoadedUsers ;
 scalar_t__ loaded_users_lru ;
 int loaded_users_max ;

loaded_user_t *find_preloaded_user (int user_id) {
  int i;
  for (i = 0; i < loaded_users_max; i++) {
    if (LoadedUsers[i].user_id == user_id && LoadedUsers[i].state > 0) {
      LoadedUsers[i].lru = ++loaded_users_lru;
      return &LoadedUsers[i];
    }
  }
  return 0;
}
