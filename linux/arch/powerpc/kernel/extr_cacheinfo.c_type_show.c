
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct cache {int dummy; } ;
typedef int ssize_t ;


 char* cache_type_string (struct cache*) ;
 struct cache* index_kobj_to_cache (struct kobject*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t type_show(struct kobject *k, struct kobj_attribute *attr, char *buf)
{
 struct cache *cache;

 cache = index_kobj_to_cache(k);

 return sprintf(buf, "%s\n", cache_type_string(cache));
}
