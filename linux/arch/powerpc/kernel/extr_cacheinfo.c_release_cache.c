
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int ofnode; int list; int level; } ;


 int cache_type_string (struct cache*) ;
 int kfree (struct cache*) ;
 int list_del (int *) ;
 int of_node_put (int ) ;
 int pr_debug (char*,int ,int ,int ) ;
 int release_cache_debugcheck (struct cache*) ;

__attribute__((used)) static void release_cache(struct cache *cache)
{
 if (!cache)
  return;

 pr_debug("freeing L%d %s cache for %pOF\n", cache->level,
   cache_type_string(cache), cache->ofnode);

 release_cache_debugcheck(cache);
 list_del(&cache->list);
 of_node_put(cache->ofnode);
 kfree(cache);
}
