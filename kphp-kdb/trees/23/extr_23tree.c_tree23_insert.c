
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int x1; int x2; struct TYPE_7__* right; struct TYPE_7__* middle; struct TYPE_7__* left; } ;
typedef TYPE_1__ tree23_t ;


 TYPE_1__* new_leaf (int) ;
 TYPE_1__* new_node2 (int,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static void tree23_insert (tree23_t **T, int x) {
  tree23_t *st[100];
  tree23_t *cur, *s, *l;
  int sp;


  if (!*T) *T = new_leaf (x);
  else {
    sp = 0;
    cur = *T;
    while (!(cur->x1 & 1)) {
      st[sp++] = cur;
      if (x < cur->x1) {
        cur = cur->left;
      } else
      if (x > cur->x2) {
        cur = cur->right;
      } else {
        cur = cur->middle;
      }
    }


    if (!(cur->x2 & 1)) {

      if (x < cur->x1) {
        s = new_leaf (x);
        x = cur->x1 & -2;
        cur->x1 = cur->x2 |= 1;
        l = cur;
      } else
      if (x > cur->x2) {
        l = new_leaf (x);
        x = cur->x2;
        cur->x2 = cur->x1;
        s = cur;
      } else {
        l = new_leaf (cur->x2);
        cur->x2 = cur->x1;
        s = cur;
      }
    } else {

      if (x < cur->x1) {
        cur->x2 = cur->x1 & -2;
        cur->x1 = x | 1;
      } else {
        cur->x2 = x;
      }
      return;
    }

    while (sp) {
      cur = st[--sp];
      if (!(cur->x2 & 1)) {

        if (x < cur->x1) {

          s = new_node2 (x, s, l);
          x = cur->x1;
          cur->x1 = cur->x2;
          cur->x2 |= 1;
          cur->left = cur->middle;
          l = cur;
        } else
        if (x > cur->x2) {

          l = new_node2 (x, s, l);
          x = cur->x2;
          cur->right = cur->middle;
          cur->x2 = cur->x1 | 1;
          s = cur;
        } else {

          l = new_node2 (cur->x2, l, cur->right);
          cur->right = s;
          cur->x2 = cur->x1 | 1;
          s = cur;
        }
      } else {

        if (x < cur->x1) {

          cur->left = s;
          cur->middle = l;
          cur->x2 &= -2;
          cur->x1 = x;
        } else {

          cur->middle = s;
          cur->right = l;
          cur->x2 = x;
        }
        return;
      }

    };


    *T = new_node2 (x, s, l);
  }
}
