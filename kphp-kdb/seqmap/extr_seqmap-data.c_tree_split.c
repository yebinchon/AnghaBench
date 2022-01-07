
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {struct item* right; struct item* left; int key; int key_len; } ;


 scalar_t__ key_cmp (int,int const*,int ,int ) ;
 int update_counters (struct item*) ;

__attribute__((used)) static void tree_split (struct item **L, struct item **R, struct item *T, int key_len, const int *key) {
  if (!T) { *L = *R = 0; return; }
  if (key_cmp (key_len, key, T->key_len, T->key) < 0) {
    *R = T;
    tree_split (L, &T->left, T->left, key_len, key);
  } else {
    *L = T;
    tree_split (&T->right, R, T->right, key_len, key);
  }
  update_counters (T);
}
