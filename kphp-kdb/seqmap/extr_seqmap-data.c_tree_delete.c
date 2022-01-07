
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {struct item* right; struct item* left; int key; int key_len; } ;


 int assert (struct item*) ;
 int key_cmp (int,int const*,int ,int ) ;
 struct item* tree_merge (struct item*,struct item*) ;
 int update_counters (struct item*) ;

__attribute__((used)) static struct item *tree_delete (struct item *T, int key_len, const int *key) {
  int c;
  assert (T);
  if (!(c = key_cmp (key_len, key, T->key_len, T->key))) {
    struct item *N = tree_merge (T->left, T->right);
    update_counters (N);
    return N;
  }
  if (c < 0) {
    T->left = tree_delete (T->left, key_len, key);
  } else {
    T->right = tree_delete (T->right, key_len, key);
  }
  update_counters (T);
  return T;
}
