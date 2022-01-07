
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_config ;
struct TYPE_4__ {int ptr; int member_0; } ;
typedef TYPE_1__ git_buf ;


 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_cleanup () ;
 int * cl_git_sandbox_init (char*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_config_free (int *) ;
 int git_config_get_string_buf (TYPE_1__*,int *,char*) ;
 int git_config_set_string (int *,char*,char*) ;
 int git_repository_config (int **,int *) ;

void test_config_write__can_set_an_empty_value(void)
{
 git_repository *repository;
 git_config *config;
 git_buf buf = {0};

 repository = cl_git_sandbox_init("testrepo.git");
 cl_git_pass(git_repository_config(&config, repository));

 cl_git_pass(git_config_set_string(config, "core.somevar", ""));
 cl_git_pass(git_config_get_string_buf(&buf, config, "core.somevar"));
 cl_assert_equal_s("", buf.ptr);

 git_buf_dispose(&buf);
 git_config_free(config);
 cl_git_sandbox_cleanup();
}
