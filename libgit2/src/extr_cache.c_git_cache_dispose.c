
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock; int map; } ;
typedef TYPE_1__ git_cache ;


 int git__memzero (TYPE_1__*,int) ;
 int git_cache_clear (TYPE_1__*) ;
 int git_oidmap_free (int ) ;
 int git_rwlock_free (int *) ;

void git_cache_dispose(git_cache *cache)
{
 git_cache_clear(cache);
 git_oidmap_free(cache->map);
 git_rwlock_free(&cache->lock);
 git__memzero(cache, sizeof(*cache));
}
