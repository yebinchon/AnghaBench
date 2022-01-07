
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ len; } ;
typedef TYPE_2__ git_rawobj ;
struct TYPE_13__ {scalar_t__ len; } ;
struct TYPE_15__ {TYPE_1__ raw; } ;
typedef TYPE_3__ git_pack_cache_entry ;
struct TYPE_16__ {scalar_t__ memory_used; scalar_t__ memory_limit; int lock; int entries; } ;
typedef TYPE_4__ git_pack_cache ;
typedef int git_off_t ;


 int GIT_ERROR_OS ;
 scalar_t__ GIT_PACK_CACHE_SIZE_LIMIT ;
 int free_lowest_entry (TYPE_4__*) ;
 int git__free (TYPE_3__*) ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_mutex_lock (int *) ;
 int git_mutex_unlock (int *) ;
 int git_offmap_exists (int ,int ) ;
 int git_offmap_set (int ,int ,TYPE_3__*) ;
 TYPE_3__* new_cache_object (TYPE_2__*) ;

__attribute__((used)) static int cache_add(
  git_pack_cache_entry **cached_out,
  git_pack_cache *cache,
  git_rawobj *base,
  git_off_t offset)
{
 git_pack_cache_entry *entry;
 int exists;

 if (base->len > GIT_PACK_CACHE_SIZE_LIMIT)
  return -1;

 entry = new_cache_object(base);
 if (entry) {
  if (git_mutex_lock(&cache->lock) < 0) {
   git_error_set(GIT_ERROR_OS, "failed to lock cache");
   git__free(entry);
   return -1;
  }

  exists = git_offmap_exists(cache->entries, offset);
  if (!exists) {
   while (cache->memory_used + base->len > cache->memory_limit)
    free_lowest_entry(cache);

   git_offmap_set(cache->entries, offset, entry);
   cache->memory_used += entry->raw.len;

   *cached_out = entry;
  }
  git_mutex_unlock(&cache->lock);

  if (exists) {
   git__free(entry);
   return -1;
  }
 }

 return 0;
}
