
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int level; int ofnode; } ;


 int WARN_ON_ONCE (int) ;
 int of_node_is_type (int ,char*) ;

__attribute__((used)) static void do_subsidiary_caches_debugcheck(struct cache *cache)
{
 WARN_ON_ONCE(cache->level != 1);
 WARN_ON_ONCE(!of_node_is_type(cache->ofnode, "cpu"));
}
