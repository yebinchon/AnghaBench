
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int config_from_gitmodules (int ,int ,int**) ;
 int gitmodules_update_clone_config ;
 int the_repository ;

void update_clone_config_from_gitmodules(int *max_jobs)
{
 config_from_gitmodules(gitmodules_update_clone_config, the_repository, &max_jobs);
}
