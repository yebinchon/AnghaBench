
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * entries; int lock; int memory_limit; } ;
typedef TYPE_1__ git_pack_cache ;


 int GIT_ERROR_OS ;
 int GIT_PACK_CACHE_MEMORY_LIMIT ;
 int git__free (int *) ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_mutex_init (int *) ;
 scalar_t__ git_offmap_new (int **) ;

__attribute__((used)) static int cache_init(git_pack_cache *cache)
{
 if (git_offmap_new(&cache->entries) < 0)
  return -1;

 cache->memory_limit = GIT_PACK_CACHE_MEMORY_LIMIT;

 if (git_mutex_init(&cache->lock)) {
  git_error_set(GIT_ERROR_OS, "failed to initialize pack cache mutex");

  git__free(cache->entries);
  cache->entries = ((void*)0);

  return -1;
 }

 return 0;
}
