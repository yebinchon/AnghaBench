
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_3__ {char* ptr; int size; } ;


 int GIT_ABBREV_DEFAULT ;
 int GIT_CONFIGMAP_ABBREV ;
 int GIT_CONFIG_LEVEL_GLOBAL ;
 int GIT_CONFIG_LEVEL_SYSTEM ;
 int GIT_CONFIG_LEVEL_XDG ;
 int GIT_OPT_SET_SEARCH_PATH ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_must_pass (int ) ;
 int cl_sandbox_set_search_path_defaults () ;
 int git_buf_joinpath (TYPE_1__*,char*,char*) ;
 int git_libgit2_opts (int ,int ,char*) ;
 int git_path_exists (char*) ;
 int git_path_isfile (char*) ;
 int git_repository__configmap_lookup (int*,int *,int ) ;
 int git_repository__configmap_lookup_cache_clear (int *) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,char*) ;
 int p_mkdir (char*,int) ;
 int p_unlink (char*) ;
 TYPE_1__ path ;

void test_repo_config__read_with_no_configs_at_all(void)
{
 git_repository *repo;
 int val;

 cl_git_pass(git_libgit2_opts(
  GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL, path.ptr));
 cl_git_pass(git_libgit2_opts(
  GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_SYSTEM, path.ptr));
 cl_git_pass(git_libgit2_opts(
  GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_XDG, path.ptr));



 cl_must_pass(p_unlink("empty_standard_repo/.git/config"));
 cl_assert(!git_path_isfile("empty_standard_repo/.git/config"));

 cl_git_pass(git_repository_open(&repo, "empty_standard_repo"));
 git_repository__configmap_lookup_cache_clear(repo);
 val = -1;
 cl_git_pass(git_repository__configmap_lookup(&val, repo, GIT_CONFIGMAP_ABBREV));
 cl_assert_equal_i(GIT_ABBREV_DEFAULT, val);
 git_repository_free(repo);



 cl_sandbox_set_search_path_defaults();

 cl_must_pass(p_mkdir("alternate/1", 0777));
 cl_git_pass(git_buf_joinpath(&path, path.ptr, "1"));
 cl_git_rewritefile("alternate/1/gitconfig", "[core]\n\tabbrev = 10\n");
 cl_git_pass(git_libgit2_opts(
  GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_SYSTEM, path.ptr));

 cl_git_pass(git_repository_open(&repo, "empty_standard_repo"));
 git_repository__configmap_lookup_cache_clear(repo);
 val = -1;
 cl_git_pass(git_repository__configmap_lookup(&val, repo, GIT_CONFIGMAP_ABBREV));
 cl_assert_equal_i(10, val);
 git_repository_free(repo);



 cl_must_pass(p_mkdir("alternate/2", 0777));
 path.ptr[path.size - 1] = '2';
 cl_git_rewritefile("alternate/2/config", "[core]\n\tabbrev = 20\n");
 cl_git_pass(git_libgit2_opts(
  GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_XDG, path.ptr));

 cl_git_pass(git_repository_open(&repo, "empty_standard_repo"));
 git_repository__configmap_lookup_cache_clear(repo);
 val = -1;
 cl_git_pass(git_repository__configmap_lookup(&val, repo, GIT_CONFIGMAP_ABBREV));
 cl_assert_equal_i(20, val);
 git_repository_free(repo);



 cl_must_pass(p_mkdir("alternate/3", 0777));
 path.ptr[path.size - 1] = '3';
 cl_git_rewritefile("alternate/3/.gitconfig", "[core]\n\tabbrev = 30\n");
 cl_git_pass(git_libgit2_opts(
  GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL, path.ptr));

 cl_git_pass(git_repository_open(&repo, "empty_standard_repo"));
 git_repository__configmap_lookup_cache_clear(repo);
 val = -1;
 cl_git_pass(git_repository__configmap_lookup(&val, repo, GIT_CONFIGMAP_ABBREV));
 cl_assert_equal_i(30, val);
 git_repository_free(repo);



 cl_git_rewritefile("empty_standard_repo/.git/config", "[core]\n\tabbrev = 40\n");

 cl_git_pass(git_repository_open(&repo, "empty_standard_repo"));
 git_repository__configmap_lookup_cache_clear(repo);
 val = -1;
 cl_git_pass(git_repository__configmap_lookup(&val, repo, GIT_CONFIGMAP_ABBREV));
 cl_assert_equal_i(40, val);
 git_repository_free(repo);



 cl_git_pass(git_repository_open(&repo, "empty_standard_repo"));
 git_repository__configmap_lookup_cache_clear(repo);
 val = -1;
 cl_git_pass(git_repository__configmap_lookup(&val, repo, GIT_CONFIGMAP_ABBREV));
 cl_assert_equal_i(40, val);

 cl_must_pass(p_unlink("empty_standard_repo/.git/config"));
 cl_assert(!git_path_isfile("empty_standard_repo/.git/config"));

 cl_must_pass(p_unlink("alternate/1/gitconfig"));
 cl_assert(!git_path_isfile("alternate/1/gitconfig"));

 cl_must_pass(p_unlink("alternate/2/config"));
 cl_assert(!git_path_isfile("alternate/2/config"));

 cl_must_pass(p_unlink("alternate/3/.gitconfig"));
 cl_assert(!git_path_isfile("alternate/3/.gitconfig"));

 git_repository__configmap_lookup_cache_clear(repo);
 val = -1;
 cl_git_pass(git_repository__configmap_lookup(&val, repo, GIT_CONFIGMAP_ABBREV));
 cl_assert_equal_i(40, val);
 git_repository_free(repo);



 cl_assert(!git_path_isfile("empty_standard_repo/.git/config"));
 cl_assert(!git_path_isfile("alternate/3/.gitconfig"));

 cl_git_pass(git_repository_open(&repo, "empty_standard_repo"));
 git_repository__configmap_lookup_cache_clear(repo);
 val = -1;
 cl_git_pass(git_repository__configmap_lookup(&val, repo, GIT_CONFIGMAP_ABBREV));
 cl_assert_equal_i(7, val);
 git_repository_free(repo);

 cl_assert(!git_path_exists("empty_standard_repo/.git/config"));
 cl_assert(!git_path_exists("alternate/3/.gitconfig"));
}
