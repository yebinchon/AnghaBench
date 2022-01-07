
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {int src_index; } ;
struct cache_entry {int name; } ;


 int cache_tree_invalidate_path (int ,int ) ;
 int untracked_cache_invalidate_path (int ,int ,int) ;

__attribute__((used)) static void invalidate_ce_path(const struct cache_entry *ce,
          struct unpack_trees_options *o)
{
 if (!ce)
  return;
 cache_tree_invalidate_path(o->src_index, ce->name);
 untracked_cache_invalidate_path(o->src_index, ce->name, 1);
}
