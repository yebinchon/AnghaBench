
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_config ;


 int assert (int) ;
 int set_config (int *,int *) ;

void git_repository_set_config(git_repository *repo, git_config *config)
{
 assert(repo && config);
 set_config(repo, config);
}
