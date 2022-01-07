
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct user_groups* grp; } ;
typedef TYPE_1__ user_t ;
struct user_groups {int cur_groups; int* G; } ;


 int del_user_group (TYPE_1__*,int) ;

__attribute__((used)) static int del_some_groups (user_t *U, int sgn_mask) {
  if (!U || !U->grp) {
    return 0;
  }

  struct user_groups *G = U->grp;
  int i, k = 0;

  for (i = 0; i < G->cur_groups; i++) {
    if ((G->G[i] ^ sgn_mask) >= 0) {
      del_user_group (U, G->G[i]);
    } else {
      G->G[k++] = G->G[i];
    }
  }

  i -= k;
  G->cur_groups = k;
  return i;
}
