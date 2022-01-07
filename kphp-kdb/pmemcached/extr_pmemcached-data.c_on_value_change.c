
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tree_delete_prefix (int ,char const*,int,int,int) ;
 int wildcard_cache_tree ;
 int wildcard_rpc_cache_tree ;

void on_value_change (const char *key, int key_len) {
  wildcard_cache_tree = tree_delete_prefix (wildcard_cache_tree, key, key_len, 1, 1);
  wildcard_rpc_cache_tree = tree_delete_prefix (wildcard_rpc_cache_tree, key, key_len, 1, 1);
}
