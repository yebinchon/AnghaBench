
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {TYPE_1__* submodule_cache; } ;
struct TYPE_2__ {int gitmodules_read; } ;


 int repo_read_gitmodules (struct repository*) ;
 int submodule_cache_check_init (struct repository*) ;

__attribute__((used)) static void gitmodules_read_check(struct repository *repo)
{
 submodule_cache_check_init(repo);


 if (!repo->submodule_cache->gitmodules_read)
  repo_read_gitmodules(repo);
}
