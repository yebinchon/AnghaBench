
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct repository {TYPE_1__* submodule_cache; } ;
struct TYPE_3__ {scalar_t__ initialized; } ;


 TYPE_1__* submodule_cache_alloc () ;
 int submodule_cache_init (TYPE_1__*) ;

__attribute__((used)) static void submodule_cache_check_init(struct repository *repo)
{
 if (repo->submodule_cache && repo->submodule_cache->initialized)
  return;

 if (!repo->submodule_cache)
  repo->submodule_cache = submodule_cache_alloc();

 submodule_cache_init(repo->submodule_cache);
}
