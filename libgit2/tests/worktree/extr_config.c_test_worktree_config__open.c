
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_config ;
struct TYPE_2__ {int worktree; } ;


 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 TYPE_1__ fixture ;
 int git_config_free (int *) ;
 int git_repository_config (int **,int ) ;

void test_worktree_config__open(void)
{
 git_config *cfg;

 cl_git_pass(git_repository_config(&cfg, fixture.worktree));
 cl_assert(cfg != ((void*)0));

 git_config_free(cfg);
}
