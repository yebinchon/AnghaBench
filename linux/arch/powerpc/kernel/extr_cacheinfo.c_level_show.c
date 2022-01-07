
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct cache_index_dir {struct cache* cache; } ;
struct cache {int level; } ;
typedef int ssize_t ;


 struct cache_index_dir* kobj_to_cache_index_dir (struct kobject*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t level_show(struct kobject *k, struct kobj_attribute *attr, char *buf)
{
 struct cache_index_dir *index;
 struct cache *cache;

 index = kobj_to_cache_index_dir(k);
 cache = index->cache;

 return sprintf(buf, "%d\n", cache->level);
}
