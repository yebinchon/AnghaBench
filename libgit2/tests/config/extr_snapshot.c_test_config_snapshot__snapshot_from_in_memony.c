
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config_backend ;


 int cfg ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int git_config_add_backend (int ,int *,int ,int *,int ) ;
 int git_config_backend_from_string (int **,char const*,int ) ;
 int git_config_get_int32 (int*,int ,char*) ;
 int git_config_new (int *) ;
 int git_config_snapshot (int *,int ) ;
 int snapshot ;
 int strlen (char const*) ;

void test_config_snapshot__snapshot_from_in_memony(void)
{
 const char *configuration = "[section]\nkey = 1\n";
 git_config_backend *backend;
 int i;

 cl_git_pass(git_config_new(&cfg));
 cl_git_pass(git_config_backend_from_string(&backend, configuration, strlen(configuration)));
 cl_git_pass(git_config_add_backend(cfg, backend, 0, ((void*)0), 0));

 cl_git_pass(git_config_snapshot(&snapshot, cfg));
 cl_git_pass(git_config_get_int32(&i, snapshot, "section.key"));
 cl_assert_equal_i(i, 1);
}
