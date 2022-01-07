
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule_cache {int dummy; } ;


 int free (struct submodule_cache*) ;
 int submodule_cache_clear (struct submodule_cache*) ;

void submodule_cache_free(struct submodule_cache *cache)
{
 submodule_cache_clear(cache);
 free(cache);
}
