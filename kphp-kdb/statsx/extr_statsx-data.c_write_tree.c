
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* right; struct TYPE_3__* left; int y; int x; } ;
typedef TYPE_1__ tree_t ;


 int writeout_char (int) ;
 int writeout_int (int ) ;

int write_tree (tree_t* v) {
  if (v == 0) {
    writeout_char (0);
    return 1;
  }
  int r = 0;
  writeout_char (1); r++;
  writeout_int (v->x); r += sizeof (int);
  writeout_int (v->y); r += sizeof (int);
  r += write_tree (v->left);
  r += write_tree (v->right);
  return r;
}
