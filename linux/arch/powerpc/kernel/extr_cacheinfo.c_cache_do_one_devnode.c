
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct cache {int dummy; } ;


 struct cache* cache_do_one_devnode_split (struct device_node*,int) ;
 struct cache* cache_do_one_devnode_unified (struct device_node*,int) ;
 scalar_t__ cache_node_is_unified (struct device_node*) ;

__attribute__((used)) static struct cache *cache_do_one_devnode(struct device_node *node, int level)
{
 struct cache *cache;

 if (cache_node_is_unified(node))
  cache = cache_do_one_devnode_unified(node, level);
 else
  cache = cache_do_one_devnode_split(node, level);

 return cache;
}
