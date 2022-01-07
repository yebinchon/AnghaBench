
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int map; } ;
typedef TYPE_1__ git_cache ;


 int GIT_ERROR_OS ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_oidmap_new (int *) ;
 scalar_t__ git_rwlock_init (int *) ;
 int memset (TYPE_1__*,int ,int) ;

int git_cache_init(git_cache *cache)
{
 memset(cache, 0, sizeof(*cache));

 if ((git_oidmap_new(&cache->map)) < 0)
  return -1;

 if (git_rwlock_init(&cache->lock)) {
  git_error_set(GIT_ERROR_OS, "failed to initialize cache rwlock");
  return -1;
 }

 return 0;
}
