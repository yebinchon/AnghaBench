
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
 int GIT_EEXISTS ;
 int assert_config_entry_value (int *,char*,char*) ;
 int assert_submodule_url (char*,char*) ;
 int cl_assert (int) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_futils_readbuffer (TYPE_1__*,char*) ;
 int git_path_exists (char*) ;
 int git_path_isdir (char*) ;
 int git_path_isfile (char*) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,char*) ;
 int git_submodule_add_setup (int **,int ,char*,char*,int) ;
 int git_submodule_free (int *) ;
 int setup_fixture_submod2 () ;

void test_submodule_add__url_absolute(void)
{
 git_submodule *sm;
 git_repository *repo;
 git_buf dot_git_content = GIT_BUF_INIT;

 g_repo = setup_fixture_submod2();


 cl_git_fail_with(
  GIT_EEXISTS,
  git_submodule_add_setup(((void*)0), g_repo, "whatever", "sm_unchanged", 1));



 cl_git_pass(
  git_submodule_add_setup(&sm, g_repo, "https://github.com/libgit2/libgit2.git", "sm_libgit2", 1)
  );
 git_submodule_free(sm);

 cl_assert(git_path_isfile("submod2/" "sm_libgit2" "/.git"));

 cl_assert(git_path_isdir("submod2/.git/modules"));
 cl_assert(git_path_isdir("submod2/.git/modules/" "sm_libgit2"));
 cl_assert(git_path_isfile("submod2/.git/modules/" "sm_libgit2" "/HEAD"));
 assert_submodule_url("sm_libgit2", "https://github.com/libgit2/libgit2.git");

 cl_git_pass(git_repository_open(&repo, "submod2/" "sm_libgit2"));


 assert_config_entry_value(repo, "core.worktree", "../../../sm_libgit2/");


 cl_git_pass(git_futils_readbuffer(&dot_git_content, "submod2/" "sm_libgit2" "/.git"));
 cl_assert_equal_s("gitdir: ../.git/modules/sm_libgit2/", dot_git_content.ptr);

 git_repository_free(repo);
 git_buf_dispose(&dot_git_content);



 cl_git_pass(
  git_submodule_add_setup(&sm, g_repo, "https://github.com/libgit2/libgit2.git", "sm_libgit2b", 0)
  );
 git_submodule_free(sm);

 cl_assert(git_path_isdir("submod2/" "sm_libgit2b" "/.git"));
 cl_assert(git_path_isfile("submod2/" "sm_libgit2b" "/.git/HEAD"));
 cl_assert(!git_path_exists("submod2/.git/modules/" "sm_libgit2b"));
 assert_submodule_url("sm_libgit2b", "https://github.com/libgit2/libgit2.git");
}
