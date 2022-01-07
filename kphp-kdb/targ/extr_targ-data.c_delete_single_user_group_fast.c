
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_groups {int cur_groups; int* G; } ;
struct user {struct user_groups* grp; } ;


 unsigned int MAX_USERS ;
 struct user** User ;
 int assert (int) ;
 int delete_user_word (int,int ) ;
 int field_value_hash (int ,int) ;
 int memmove (int*,int*,int) ;
 int q_grp_id ;
 int user_group_pairs ;

__attribute__((used)) static void delete_single_user_group_fast (int uid, int group_id) {
  assert ((unsigned)uid < MAX_USERS);
  struct user *U = User[uid];
  assert (U && U->grp);

  struct user_groups *G = U->grp;
  int l = -1, r = G->cur_groups;
  while (r - l > 1) {
    int m = (l + r) >> 1;
    if (group_id < G->G[m]) {
      r = m;
    } else {
      l = m;
    }
  }

  assert (l >= 0 && G->G[l] == group_id);
  memmove (G->G + l, G->G + (l + 1), (G->cur_groups - l - 1) * 4);

  G->cur_groups--;

  delete_user_word (uid, field_value_hash (q_grp_id, group_id));
  user_group_pairs--;
}
