
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct cache {int level; } ;


 int WARN_ONCE (int ,char*,int,int) ;
 struct cache* cache_do_one_devnode (struct device_node*,int) ;
 struct cache* cache_lookup_by_node (struct device_node*) ;

__attribute__((used)) static struct cache *cache_lookup_or_instantiate(struct device_node *node,
       int level)
{
 struct cache *cache;

 cache = cache_lookup_by_node(node);

 WARN_ONCE(cache && cache->level != level,
    "cache level mismatch on lookup (got %d, expected %d)\n",
    cache->level, level);

 if (!cache)
  cache = cache_do_one_devnode(node, level);

 return cache;
}
