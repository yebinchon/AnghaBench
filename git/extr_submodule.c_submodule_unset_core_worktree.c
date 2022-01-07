
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule {int path; int name; } ;


 int _ (char*) ;
 int free (char*) ;
 int get_git_common_dir () ;
 scalar_t__ git_config_set_in_file_gently (char*,char*,int *) ;
 int warning (int ,int ) ;
 char* xstrfmt (char*,int ,int ) ;

void submodule_unset_core_worktree(const struct submodule *sub)
{
 char *config_path = xstrfmt("%s/modules/%s/config",
        get_git_common_dir(), sub->name);

 if (git_config_set_in_file_gently(config_path, "core.worktree", ((void*)0)))
  warning(_("Could not unset core.worktree setting in submodule '%s'"),
     sub->path);

 free(config_path);
}
