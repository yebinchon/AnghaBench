
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_submodule ;
typedef int git_repository ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int assert_config_entry_value (int *,char*,char*) ;
 int cl_assert (int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_futils_readbuffer (TYPE_1__*,char*) ;
 int git_path_isdir (char*) ;
 int git_path_isfile (char*) ;
 int git_repository_free (int *) ;
 int git_submodule_free (int *) ;
 int git_submodule_init (int *,int ) ;
 int git_submodule_lookup (int **,int ,char*) ;
 int git_submodule_repo_init (int **,int *,int) ;
 int setup_fixture_submod2 () ;

void test_submodule_repository_init__basic(void)
{
 git_submodule *sm;
 git_repository *repo;
 git_buf dot_git_content = GIT_BUF_INIT;

 g_repo = setup_fixture_submod2();

 cl_git_pass(git_submodule_lookup(&sm, g_repo, "sm_gitmodules_only"));
 cl_git_pass(git_submodule_init(sm, 0));
 cl_git_pass(git_submodule_repo_init(&repo, sm, 1));


 assert_config_entry_value(repo, "core.worktree", "../../../sm_gitmodules_only/");


 cl_git_pass(git_futils_readbuffer(&dot_git_content, "submod2/" "sm_gitmodules_only" "/.git"));
 cl_assert_equal_s("gitdir: ../.git/modules/sm_gitmodules_only/", dot_git_content.ptr);

 cl_assert(git_path_isfile("submod2/" "sm_gitmodules_only" "/.git"));

 cl_assert(git_path_isdir("submod2/.git/modules"));
 cl_assert(git_path_isdir("submod2/.git/modules/" "sm_gitmodules_only"));
 cl_assert(git_path_isfile("submod2/.git/modules/" "sm_gitmodules_only" "/HEAD"));

 git_submodule_free(sm);
 git_repository_free(repo);
 git_buf_dispose(&dot_git_content);
}
