
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wildcard_entry {int flags; struct wildcard_entry* prev_use; } ;
typedef int hash_entry_t ;


 int assert (int) ;
 int tree_wildcard_delete (int ,int *) ;
 int vkprintf (int,char*,int ,struct wildcard_entry*) ;
 int wildcard_cache_memory ;
 int wildcard_cache_tree ;
 int wildcard_rpc_cache_tree ;
 struct wildcard_entry wildcard_use ;

void wildcard_free_lru (void) {
  struct wildcard_entry *entry = wildcard_use.prev_use;
  assert (entry != &wildcard_use);
  if (entry->flags & 1) {
    wildcard_cache_tree = tree_wildcard_delete (wildcard_cache_tree, (hash_entry_t *)entry);
  } else {
    wildcard_rpc_cache_tree = tree_wildcard_delete (wildcard_rpc_cache_tree, (hash_entry_t *)entry);
  }
  vkprintf (2, "wildcard_lru succ: memory = %lld, entry = %p\n", wildcard_cache_memory, entry);
}
