
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct cache {int dummy; } ;


 int cache_is_unified_d (struct device_node*) ;
 struct cache* new_cache (int ,int,struct device_node*) ;
 int pr_debug (char*,int,struct device_node*) ;

__attribute__((used)) static struct cache *cache_do_one_devnode_unified(struct device_node *node, int level)
{
 pr_debug("creating L%d ucache for %pOF\n", level, node);

 return new_cache(cache_is_unified_d(node), level, node);
}
