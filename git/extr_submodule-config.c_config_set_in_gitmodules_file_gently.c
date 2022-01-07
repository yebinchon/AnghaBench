
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GITMODULES_FILE ;
 int _ (char*) ;
 int git_config_set_in_file_gently (int ,char const*,char const*) ;
 int warning (int ,char const*) ;

int config_set_in_gitmodules_file_gently(const char *key, const char *value)
{
 int ret;

 ret = git_config_set_in_file_gently(GITMODULES_FILE, key, value);
 if (ret < 0)

  warning(_("Could not update .gitmodules entry %s"), key);

 return ret;
}
