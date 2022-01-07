
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_groups {int cur_groups; int* G; } ;
struct user {struct user_groups* grp; } ;



int is_user_in_group (struct user *U, int group_id) {
  struct user_groups *G = U->grp;
  if (G) {
    int l = -1, r = G->cur_groups;
    while (r - l > 1) {
      int m = (l + r) >> 1;
      if (group_id < G->G[m]) {
 r = m;
      } else {
 l = m;
      }
    }

    if (l >= 0 && G->G[l] == group_id) {
      return 1;
    }
  }
  return 0;
}
