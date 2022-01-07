
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ git_cache ;


 int clear_cache (TYPE_1__*) ;
 scalar_t__ git_rwlock_wrlock (int *) ;
 int git_rwlock_wrunlock (int *) ;

void git_cache_clear(git_cache *cache)
{
 if (git_rwlock_wrlock(&cache->lock) < 0)
  return;

 clear_cache(cache);

 git_rwlock_wrunlock(&cache->lock);
}
