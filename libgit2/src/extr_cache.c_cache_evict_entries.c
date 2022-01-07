
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ssize_t ;
typedef int git_oid ;
struct TYPE_7__ {scalar_t__ size; } ;
typedef TYPE_1__ git_cached_obj ;
struct TYPE_8__ {int used_memory; int map; } ;
typedef TYPE_2__ git_cache ;


 scalar_t__ GIT_ITEROVER ;
 int clear_cache (TYPE_2__*) ;
 int git_atomic_ssize_add (int *,int ) ;
 int git_cache__current_storage ;
 size_t git_cache_size (TYPE_2__*) ;
 int git_cached_obj_decref (TYPE_1__*) ;
 int git_oidmap_delete (int ,int const*) ;
 scalar_t__ git_oidmap_iterate (void**,int ,size_t*,int const**) ;

__attribute__((used)) static void cache_evict_entries(git_cache *cache)
{
 size_t evict_count = git_cache_size(cache) / 2048, i;
 ssize_t evicted_memory = 0;

 if (evict_count < 8)
  evict_count = 8;


 if (evict_count > git_cache_size(cache)) {
  clear_cache(cache);
  return;
 }

 i = 0;
 while (evict_count > 0) {
  git_cached_obj *evict;
  const git_oid *key;

  if (git_oidmap_iterate((void **) &evict, cache->map, &i, &key) == GIT_ITEROVER)
   break;

  evict_count--;
  evicted_memory += evict->size;
  git_oidmap_delete(cache->map, key);
  git_cached_obj_decref(evict);
 }

 cache->used_memory -= evicted_memory;
 git_atomic_ssize_add(&git_cache__current_storage, -evicted_memory);
}
