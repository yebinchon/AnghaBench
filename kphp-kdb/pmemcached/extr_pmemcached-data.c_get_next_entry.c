
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * x; } ;
typedef TYPE_1__ tree_t ;
typedef int hash_entry_t ;


 int tree ;
 TYPE_1__* tree_lookup_next (int ,char const*,int,int,int) ;

hash_entry_t *get_next_entry (const char *key, int key_len) {
  tree_t *T = tree_lookup_next (tree, key, key_len, 1, 1);
  if (!T) {
    return 0;
  } else {
    return T->x;
  }
}
