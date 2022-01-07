
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule_cache {int initialized; int for_name; int for_path; } ;


 int config_name_cmp ;
 int config_path_cmp ;
 int hashmap_init (int *,int ,int *,int ) ;

__attribute__((used)) static void submodule_cache_init(struct submodule_cache *cache)
{
 hashmap_init(&cache->for_path, config_path_cmp, ((void*)0), 0);
 hashmap_init(&cache->for_name, config_name_cmp, ((void*)0), 0);
 cache->initialized = 1;
}
