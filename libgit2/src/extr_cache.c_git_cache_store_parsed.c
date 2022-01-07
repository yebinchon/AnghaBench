
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ cached; } ;
typedef TYPE_2__ git_object ;
typedef int git_cached_obj ;
typedef int git_cache ;


 int GIT_CACHE_STORE_PARSED ;
 void* cache_store (int *,int *) ;

void *git_cache_store_parsed(git_cache *cache, git_object *entry)
{
 entry->cached.flags = GIT_CACHE_STORE_PARSED;
 return cache_store(cache, (git_cached_obj *)entry);
}
