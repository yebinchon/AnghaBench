
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int lock; int map; int items; } ;
typedef TYPE_1__ git_sortedcache ;


 int git__free (TYPE_1__*) ;
 int git_rwlock_free (int *) ;
 scalar_t__ git_sortedcache_wlock (TYPE_1__*) ;
 int git_sortedcache_wunlock (TYPE_1__*) ;
 int git_strmap_free (int ) ;
 int git_vector_free (int *) ;
 int sortedcache_clear (TYPE_1__*) ;

__attribute__((used)) static void sortedcache_free(git_sortedcache *sc)
{

 if (git_sortedcache_wlock(sc) < 0)
  return;

 sortedcache_clear(sc);
 git_vector_free(&sc->items);
 git_strmap_free(sc->map);

 git_sortedcache_wunlock(sc);

 git_rwlock_free(&sc->lock);
 git__free(sc);
}
