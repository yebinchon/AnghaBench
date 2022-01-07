
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; int lru; int size; int user_id; int ptr; } ;


 TYPE_1__* LoadedUsers ;
 int assert (int) ;
 int fprintf (int ,char*,int,int ,int,int) ;
 scalar_t__ loaded_users_cnt ;
 int loaded_users_max ;
 int loaded_users_size ;
 int stderr ;
 scalar_t__ verbosity ;

int drop_lru_user (void) {
  int i, j = -1, lru = 0x7fffffff;
  for (i = 0; i < loaded_users_max; i++) {
    if (LoadedUsers[i].state > 0 && LoadedUsers[i].lru < lru) {
      lru = LoadedUsers[i].lru;
      j = i;
    }
  }
  if (j >= 0) {
    if (verbosity > 0) {
      fprintf (stderr, "drop_lru_user(): drop slot #%d at %p, size %d of user %d\n",
        j, LoadedUsers[j].ptr, LoadedUsers[j].size, LoadedUsers[j].user_id);
    }
    loaded_users_size -= LoadedUsers[j].size;
    LoadedUsers[j].state = 0;
    assert (--loaded_users_cnt >= 0);
    if (j == loaded_users_max - 1) {
      assert (--loaded_users_max >= 0);
    }
  }
  return j;
}
