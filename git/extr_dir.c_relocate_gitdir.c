
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int connect_work_tree_and_git_dir (char const*,char const*,int ) ;
 int die_errno (int ,char const*,char const*) ;
 scalar_t__ rename (char const*,char const*) ;

void relocate_gitdir(const char *path, const char *old_git_dir, const char *new_git_dir)
{
 if (rename(old_git_dir, new_git_dir) < 0)
  die_errno(_("could not migrate git directory from '%s' to '%s'"),
   old_git_dir, new_git_dir);

 connect_work_tree_and_git_dir(path, new_git_dir, 0);
}
