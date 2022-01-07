
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_config_get_value (char const*,char const**) ;
 int git_config_perm (char const*,char const*) ;
 scalar_t__ need_shared_repository_from_config ;
 int the_shared_repository ;

int get_shared_repository(void)
{
 if (need_shared_repository_from_config) {
  const char *var = "core.sharedrepository";
  const char *value;
  if (!git_config_get_value(var, &value))
   the_shared_repository = git_config_perm(var, value);
  need_shared_repository_from_config = 0;
 }
 return the_shared_repository;
}
