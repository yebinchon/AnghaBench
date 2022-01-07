
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int map; } ;
typedef TYPE_1__ git_sortedcache ;


 void* git_strmap_get (int ,char const*) ;

void *git_sortedcache_lookup(const git_sortedcache *sc, const char *key)
{
 return git_strmap_get(sc->map, key);
}
