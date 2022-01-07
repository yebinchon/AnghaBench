
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_submodule ;
typedef int git_config ;
struct TYPE_6__ {char* ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_assert_equal_s (char*,char const*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,char*,char*) ;
 int git_config_free (int *) ;
 int git_config_get_string (char const**,int *,char*) ;
 scalar_t__ git_path_dirname_r (TYPE_1__*,int ) ;
 int git_repository_config_snapshot (int **,int ) ;
 int git_repository_workdir (int ) ;
 int git_submodule_free (int *) ;
 int git_submodule_init (int *,int) ;
 int git_submodule_lookup (int **,int ,char*) ;
 char const* git_submodule_url (int *) ;
 int setup_fixture_submodule_simple () ;

void test_submodule_init__relative_url(void)
{
 git_submodule *sm;
 git_config *cfg;
 git_buf absolute_url = GIT_BUF_INIT;
 const char *config_url;

 g_repo = setup_fixture_submodule_simple();

 cl_assert(git_path_dirname_r(&absolute_url, git_repository_workdir(g_repo)) > 0);
 cl_git_pass(git_buf_joinpath(&absolute_url, absolute_url.ptr, "testrepo.git"));

 cl_git_pass(git_submodule_lookup(&sm, g_repo, "testrepo"));


 cl_assert_equal_s("../testrepo.git", git_submodule_url(sm));


 cl_git_pass(git_submodule_init(sm, 0));

 cl_git_pass(git_repository_config_snapshot(&cfg, g_repo));

 cl_git_pass(git_config_get_string(&config_url, cfg, "submodule.testrepo.url"));
 cl_assert_equal_s(absolute_url.ptr, config_url);

 git_buf_dispose(&absolute_url);
 git_config_free(cfg);
 git_submodule_free(sm);
}
