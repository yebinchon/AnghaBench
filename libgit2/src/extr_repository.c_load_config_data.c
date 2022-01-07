
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_bare; int is_worktree; } ;
typedef TYPE_1__ git_repository ;
typedef int git_config ;


 int GIT_ENOTFOUND ;
 int git_config_get_bool (int*,int const*,char*) ;

__attribute__((used)) static int load_config_data(git_repository *repo, const git_config *config)
{
 int is_bare;

 int err = git_config_get_bool(&is_bare, config, "core.bare");
 if (err < 0 && err != GIT_ENOTFOUND)
  return err;


 if (err != GIT_ENOTFOUND)
  repo->is_bare = is_bare && !repo->is_worktree;
 else
  repo->is_bare = 0;

 return 0;
}
