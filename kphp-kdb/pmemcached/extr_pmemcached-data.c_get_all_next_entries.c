
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tree ;
 int tree_lookup_all_next (int ,char const*,int,int,int,int,int) ;

int get_all_next_entries (const char *key, int key_len, int prefix_len, int strict) {
  return tree_lookup_all_next (tree, key, key_len, prefix_len, strict, 1, 1);
}
