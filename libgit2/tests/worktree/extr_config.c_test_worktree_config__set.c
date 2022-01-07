
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int32_t ;
typedef int git_config ;
struct TYPE_2__ {int repo; int worktree; } ;


 int cl_assert_equal_i (int ,int) ;
 int cl_git_pass (int ) ;
 TYPE_1__ fixture ;
 int git_config_free (int *) ;
 int git_config_get_int32 (int *,int *,char*) ;
 int git_config_set_int32 (int *,char*,int) ;
 int git_repository_config (int **,int ) ;

void test_worktree_config__set(void)
{
 git_config *cfg;
 int32_t val;

 cl_git_pass(git_repository_config(&cfg, fixture.worktree));
 cl_git_pass(git_config_set_int32(cfg, "core.dummy", 5));
 git_config_free(cfg);





 cl_git_pass(git_repository_config(&cfg, fixture.repo));
 cl_git_pass(git_config_get_int32(&val, cfg, "core.dummy"));
 cl_assert_equal_i(val, 5);
 git_config_free(cfg);
}
