
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_config (int ,int *) ;
 int git_config_get_bool (char*,int *) ;
 int git_default_config ;
 int rerere_autoupdate ;
 int rerere_enabled ;

__attribute__((used)) static void git_rerere_config(void)
{
 git_config_get_bool("rerere.enabled", &rerere_enabled);
 git_config_get_bool("rerere.autoupdate", &rerere_autoupdate);
 git_config(git_default_config, ((void*)0));
}
