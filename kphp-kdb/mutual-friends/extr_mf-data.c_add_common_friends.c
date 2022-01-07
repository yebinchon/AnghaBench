
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sugg; } ;
typedef TYPE_1__ user ;


 TYPE_1__* conv_uid (int) ;
 int rand () ;
 int trp_incr (int *,int,int) ;

int add_common_friends (int uid, int add, int *a, int an) {
  user *u = conv_uid (uid);

  if (u == ((void*)0)) {
    return 0;
  }

  int i;
  for (i = 0; i < an; i++) {
    if (rand() % an < 300) {
      trp_incr (&u->sugg, a[i], add);
    }
  }

  return 1;
}
