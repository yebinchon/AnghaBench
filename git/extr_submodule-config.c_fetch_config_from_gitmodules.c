
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fetch_config {int* max_children; int* recurse_submodules; } ;


 int config_from_gitmodules (int ,int ,struct fetch_config*) ;
 int gitmodules_fetch_config ;
 int the_repository ;

void fetch_config_from_gitmodules(int *max_children, int *recurse_submodules)
{
 struct fetch_config config = {
  .max_children = max_children,
  .recurse_submodules = recurse_submodules
 };
 config_from_gitmodules(gitmodules_fetch_config, the_repository, &config);
}
