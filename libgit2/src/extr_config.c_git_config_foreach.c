
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config_foreach_cb ;
typedef int git_config ;


 int git_config_foreach_match (int const*,int *,int ,void*) ;

int git_config_foreach(
 const git_config *cfg, git_config_foreach_cb cb, void *payload)
{
 return git_config_foreach_match(cfg, ((void*)0), cb, payload);
}
