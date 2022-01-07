
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_WORK_TREE_ENVIRONMENT ;
 int _ (char*) ;
 scalar_t__ chdir_notify (char const*) ;
 int die (int ) ;
 char* get_git_work_tree () ;
 scalar_t__ getenv (int ) ;
 int setenv (int ,char*,int) ;
 scalar_t__ work_tree_config_is_bogus ;

void setup_work_tree(void)
{
 const char *work_tree;
 static int initialized = 0;

 if (initialized)
  return;

 if (work_tree_config_is_bogus)
  die(_("unable to set up work tree using invalid config"));

 work_tree = get_git_work_tree();
 if (!work_tree || chdir_notify(work_tree))
  die(_("this operation must be run in a work tree"));





 if (getenv(GIT_WORK_TREE_ENVIRONMENT))
  setenv(GIT_WORK_TREE_ENVIRONMENT, ".", 1);

 initialized = 1;
}
