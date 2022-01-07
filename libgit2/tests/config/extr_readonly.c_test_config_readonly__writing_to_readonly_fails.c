
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int readonly; } ;
typedef TYPE_1__ git_config_backend ;


 int GIT_CONFIG_LEVEL_GLOBAL ;
 int GIT_ENOTFOUND ;
 int cfg ;
 int cl_assert (int) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_config_add_backend (int ,TYPE_1__*,int ,int *,int ) ;
 int git_config_backend_from_file (TYPE_1__**,char*) ;
 int git_config_set_string (int ,char*,char*) ;
 int git_path_exists (char*) ;

void test_config_readonly__writing_to_readonly_fails(void)
{
 git_config_backend *backend;

 cl_git_pass(git_config_backend_from_file(&backend, "global"));
 backend->readonly = 1;
 cl_git_pass(git_config_add_backend(cfg, backend, GIT_CONFIG_LEVEL_GLOBAL, ((void*)0), 0));

 cl_git_fail_with(GIT_ENOTFOUND, git_config_set_string(cfg, "foo.bar", "baz"));
 cl_assert(!git_path_exists("global"));
}
