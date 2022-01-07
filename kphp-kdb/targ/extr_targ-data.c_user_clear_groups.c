
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct user_groups* grp; } ;
typedef TYPE_1__ user_t ;
struct user_groups {int cur_groups; int tot_groups; int * G; } ;


 int del_user_group (TYPE_1__*,int ) ;
 int zfree (struct user_groups*,int) ;

__attribute__((used)) static void user_clear_groups (user_t *U) {
  struct user_groups *G = U->grp;

  if (G) {
    int i;
    for (i = 0; i < G->cur_groups; i++) {
      del_user_group (U, G->G[i]);
    }
    zfree (G, sizeof (struct user_groups) + G->tot_groups*4);
  }

  U->grp = 0;
}
