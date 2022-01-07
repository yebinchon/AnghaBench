
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_object ;
typedef int git_cache ;


 int GIT_CACHE_STORE_PARSED ;
 int * cache_get (int *,int const*,int ) ;

git_object *git_cache_get_parsed(git_cache *cache, const git_oid *oid)
{
 return cache_get(cache, oid, GIT_CACHE_STORE_PARSED);
}
