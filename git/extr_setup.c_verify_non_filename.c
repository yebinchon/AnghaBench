
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int check_filename (char const*,char const*) ;
 int die (int ,char const*) ;
 scalar_t__ is_inside_git_dir () ;
 int is_inside_work_tree () ;

void verify_non_filename(const char *prefix, const char *arg)
{
 if (!is_inside_work_tree() || is_inside_git_dir())
  return;
 if (*arg == '-')
  return;
 if (!check_filename(prefix, arg))
  return;
 die(_("ambiguous argument '%s': both revision and filename\n"
       "Use '--' to separate paths from revisions, like this:\n"
       "'git <command> [<revision>...] -- [<file>...]'"), arg);
}
