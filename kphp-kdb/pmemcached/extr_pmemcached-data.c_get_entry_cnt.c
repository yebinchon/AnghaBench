
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alloc_tree_nodes ;
 int wildcard_cache_entries ;

inline int get_entry_cnt (void) {
  return alloc_tree_nodes - wildcard_cache_entries;
}
