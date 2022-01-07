
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_t ;
struct lev_groups_ext {int gr_num; int groups; } ;
struct lev_groups {int groups; } ;


 scalar_t__ LEV_TARG_GROUP_ADD ;
 scalar_t__ LEV_TARG_GROUP_EXT_ADD ;
 unsigned int MAX_USER_LEV_GROUPS ;
 int add_groups (int *,int*,int) ;
 void* alloc_log_event (scalar_t__,int,int) ;
 int * get_user (int) ;
 int memcpy (int ,int*,int) ;

int do_add_user_groups (int user_id, int List[], int len) {
  user_t *U = get_user (user_id);
  if (!U || !len) {
    return 0;
  }
  if ((unsigned) len > MAX_USER_LEV_GROUPS) {
    return -1;
  }
  int i;
  for (i = 1; i < len; i++) {
    if (List[i] <= List[i-1]) {
      return -1;
    }
  }

  if (len < 256) {
    struct lev_groups *E = alloc_log_event (LEV_TARG_GROUP_ADD + len, 8 + len * 4, user_id);
    memcpy (E->groups, List, len * 4);
  } else {
    struct lev_groups_ext *E = alloc_log_event (LEV_TARG_GROUP_EXT_ADD, 12 + len * 4, user_id);
    E->gr_num = len;
    memcpy (E->groups, List, len * 4);
  }

  return add_groups (U, List, len);
}
