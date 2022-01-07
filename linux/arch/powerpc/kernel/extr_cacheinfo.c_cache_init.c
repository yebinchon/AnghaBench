
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct cache {int type; int level; int list; int ofnode; } ;


 int INIT_LIST_HEAD (int *) ;
 int cache_list ;
 int list_add (int *,int *) ;
 int of_node_get (struct device_node*) ;

__attribute__((used)) static void cache_init(struct cache *cache, int type, int level,
         struct device_node *ofnode)
{
 cache->type = type;
 cache->level = level;
 cache->ofnode = of_node_get(ofnode);
 INIT_LIST_HEAD(&cache->list);
 list_add(&cache->list, &cache_list);
}
