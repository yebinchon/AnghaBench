
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct cache_index_dir {TYPE_1__* cache; } ;
struct TYPE_2__ {int level; } ;


 int cache_type_string (TYPE_1__*) ;
 int kfree (struct cache_index_dir*) ;
 struct cache_index_dir* kobj_to_cache_index_dir (struct kobject*) ;
 int pr_debug (char*,int ,int ) ;

__attribute__((used)) static void cache_index_release(struct kobject *kobj)
{
 struct cache_index_dir *index;

 index = kobj_to_cache_index_dir(kobj);

 pr_debug("freeing index directory for L%d %s cache\n",
   index->cache->level, cache_type_string(index->cache));

 kfree(index);
}
