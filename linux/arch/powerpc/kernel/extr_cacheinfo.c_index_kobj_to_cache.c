
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct cache_index_dir {struct cache* cache; } ;
struct cache {int dummy; } ;


 struct cache_index_dir* kobj_to_cache_index_dir (struct kobject*) ;

__attribute__((used)) static struct cache *index_kobj_to_cache(struct kobject *k)
{
 struct cache_index_dir *index;

 index = kobj_to_cache_index_dir(k);

 return index->cache;
}
