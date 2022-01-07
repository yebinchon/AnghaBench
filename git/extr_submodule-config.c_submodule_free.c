
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {scalar_t__ submodule_cache; } ;


 int submodule_cache_clear (scalar_t__) ;

void submodule_free(struct repository *r)
{
 if (r->submodule_cache)
  submodule_cache_clear(r->submodule_cache);
}
