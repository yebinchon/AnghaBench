
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* right; struct TYPE_6__* left; TYPE_1__* x; } ;
typedef TYPE_2__ tree_t ;
struct TYPE_5__ {int key_len; int key; } ;


 int assert (int) ;
 scalar_t__ min (int,int) ;
 int mystrcmp2 (char const*,int,int ,int ,scalar_t__) ;

__attribute__((used)) static tree_t *tree_lookup (tree_t *T, const char *key, int key_len) {
  int c;
  int lc = 1;
  int rc = 1;
  while (T && (c = mystrcmp2 (key, key_len, T->x->key, T->x->key_len, min (lc, rc) - 1))) {
    T = (c < 0) ? T->left : T->right;
    if (c < 0) {
      rc = -c;
    } else {
      assert (c > 0);
      lc = c;
    }
  }
  return T;
}
