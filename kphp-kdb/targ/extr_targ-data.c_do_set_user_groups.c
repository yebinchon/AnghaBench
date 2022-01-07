
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_t ;


 unsigned int MAX_USER_LEV_GROUPS ;
 int do_add_user_groups (int,int*,int) ;
 int do_delete_groups (int) ;
 int * get_user (int) ;

int do_set_user_groups (int user_id, int List[], int len) {
  user_t *U = get_user (user_id);
  if (!U) {
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

  if (!len) {
    return do_delete_groups (user_id);
  }
  do_delete_groups (user_id);

  return do_add_user_groups (user_id, List, len);
}
