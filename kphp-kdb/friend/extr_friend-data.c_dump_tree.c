
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* right; struct TYPE_3__* left; int x; } ;
typedef TYPE_1__ tree_t ;


 int writeout (int *,int) ;
 int writeout_char (int) ;

__attribute__((used)) static void dump_tree (tree_t *T) {
  if (T) {
    writeout_char (1);
  } else {
    writeout_char (0);
    return;
  }
  writeout (&T->x, 16);
  dump_tree (T->left);
  dump_tree (T->right);
}
