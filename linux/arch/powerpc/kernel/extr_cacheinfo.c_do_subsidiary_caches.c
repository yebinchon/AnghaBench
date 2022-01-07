
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct cache {int level; int ofnode; } ;


 struct cache* cache_lookup_or_instantiate (struct device_node*,int) ;
 int do_subsidiary_caches_debugcheck (struct cache*) ;
 int link_cache_lists (struct cache*,struct cache*) ;
 struct device_node* of_find_next_cache_node (int ) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static void do_subsidiary_caches(struct cache *cache)
{
 struct device_node *subcache_node;
 int level = cache->level;

 do_subsidiary_caches_debugcheck(cache);

 while ((subcache_node = of_find_next_cache_node(cache->ofnode))) {
  struct cache *subcache;

  level++;
  subcache = cache_lookup_or_instantiate(subcache_node, level);
  of_node_put(subcache_node);
  if (!subcache)
   break;

  link_cache_lists(cache, subcache);
  cache = subcache;
 }
}
