
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* right; struct TYPE_3__* left; int x1; } ;
typedef TYPE_1__ rev_friends_t ;


 int writeout (int *,int) ;
 int writeout_char (int) ;

__attribute__((used)) static void dump_rev_friends (rev_friends_t *T) {
  if (T) {
    writeout_char (4);
  } else {
    writeout_char (3);
    return;
  }
  writeout (&T->x1, 16);
  dump_rev_friends (T->left);
  dump_rev_friends (T->right);
}
