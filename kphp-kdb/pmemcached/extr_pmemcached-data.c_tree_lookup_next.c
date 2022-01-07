
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
 int min (int,int) ;
 int mystrcmp2 (char const*,int,int ,int ,int) ;

__attribute__((used)) static tree_t *tree_lookup_next (tree_t *T, const char *key, int key_len, int lc, int rc) {

  if (!T) {
    return 0;
  }
  int c = mystrcmp2 (key, key_len, T->x->key, T->x->key_len, min (lc, rc) - 1);
  if (c < 0) {
    assert (-c >= min (lc, rc));
    tree_t *N = tree_lookup_next (T->left, key, key_len, lc, -c);
    return N ? N : T;
  } else {
    if (c == 0) { c = 2000; }
    assert (c >= min (lc, rc));
    return tree_lookup_next (T->right, key, key_len, c, rc);
  }
}
