
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {TYPE_1__* submodule_cache; int index; } ;
struct TYPE_2__ {int gitmodules_read; } ;


 int config_from_gitmodules (int ,struct repository*,struct repository*) ;
 int gitmodules_cb ;
 int is_gitmodules_unmerged (int ) ;
 scalar_t__ repo_read_index (struct repository*) ;
 int submodule_cache_check_init (struct repository*) ;

void repo_read_gitmodules(struct repository *repo)
{
 submodule_cache_check_init(repo);

 if (repo_read_index(repo) < 0)
  return;

 if (!is_gitmodules_unmerged(repo->index))
  config_from_gitmodules(gitmodules_cb, repo, repo);

 repo->submodule_cache->gitmodules_read = 1;
}
