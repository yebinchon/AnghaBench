
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;


 int CONFIG_INVALID_KEY ;
 int config_from_gitmodules (int ,struct repository*,char*) ;
 int config_print_callback ;
 int free (char*) ;
 int git_config_parse_key (char const*,char**,int *) ;

int print_config_from_gitmodules(struct repository *repo, const char *key)
{
 int ret;
 char *store_key;

 ret = git_config_parse_key(key, &store_key, ((void*)0));
 if (ret < 0)
  return CONFIG_INVALID_KEY;

 config_from_gitmodules(config_print_callback, repo, store_key);

 free(store_key);
 return 0;
}
