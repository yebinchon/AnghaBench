
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int key_len; scalar_t__ prev_time; scalar_t__ next_time; } ;


 int item_tree ;
 struct item* tree_lookup (int ,int,int const*) ;

struct item *preload_key (int key_len, const int *key, int force) {
  struct item *I = tree_lookup (item_tree, key_len, key);
  if (I) { return I; }
  static struct item T;
  I = &T;
  I->key_len = -1;
  I->next_time = I->prev_time = 0;
  return I;
}
