
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int entry_count; } ;
typedef TYPE_1__ status_entry_counts ;
struct TYPE_8__ {int flags; } ;
typedef TYPE_2__ git_status_options ;
typedef int git_repository ;
typedef int git_index ;


 int GIT_RMDIR_REMOVE_FILES ;



 TYPE_2__ GIT_STATUS_OPTIONS_INIT ;
 int GIT_STATUS_OPT_INCLUDE_IGNORED ;
 int GIT_STATUS_OPT_INCLUDE_UNTRACKED ;
 int GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS ;


 int cb_status__match ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_append2file (char*,char*) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int g_repo ;
 int git_futils_rmdir_r (char*,int *,int ) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_repository_free (int *) ;
 int git_repository_index (int **,int ) ;
 int git_repository_init (int **,char*,int) ;
 int git_status_foreach_ext (int ,TYPE_2__*,int ,TYPE_1__*) ;
 int p_mkdir (char*,int) ;
 int setup_fixture_submodules () ;
 int status_counts_init (TYPE_1__,char const**,unsigned int*) ;

void test_status_submodules__broken_stuff_that_git_allows(void)
{
 git_status_options opts = GIT_STATUS_OPTIONS_INIT;
 status_entry_counts counts;
 git_repository *contained;
 static const char *expected_files_with_broken[] = {
  ".gitmodules",
  "added",
  "broken/tracked",
  "deleted",
  "ignored",
  "modified",
  "untracked"
 };
 static unsigned int expected_status_with_broken[] = {
  129,
  130,
  130,
  131,
  132,
  129,
  128,
 };

 g_repo = setup_fixture_submodules();

 opts.flags = GIT_STATUS_OPT_INCLUDE_UNTRACKED |
  GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS |
  GIT_STATUS_OPT_INCLUDE_IGNORED;


 {
  git_index *idx;
  cl_must_pass(p_mkdir("submodules/broken", 0777));
  cl_git_mkfile("submodules/broken/tracked", "tracked content");
  cl_git_pass(git_repository_index(&idx, g_repo));
  cl_git_pass(git_index_add_bypath(idx, "broken/tracked"));
  cl_git_pass(git_index_write(idx));
  git_index_free(idx);
 }

 status_counts_init(
  counts, expected_files_with_broken, expected_status_with_broken);
 cl_git_pass(git_status_foreach_ext(
  g_repo, &opts, cb_status__match, &counts));
 cl_assert_equal_i(7, counts.entry_count);



 cl_must_pass(p_mkdir("submodules/broken/.git", 0777));
 cl_must_pass(p_mkdir("submodules/broken/.git/info", 0777));
 cl_git_mkfile("submodules/broken/.git/info/exclude", "# bogus");

 status_counts_init(
  counts, expected_files_with_broken, expected_status_with_broken);
 cl_git_pass(git_status_foreach_ext(
  g_repo, &opts, cb_status__match, &counts));
 cl_assert_equal_i(7, counts.entry_count);



 cl_git_pass(git_futils_rmdir_r(
  "submodules/broken/.git", ((void*)0), GIT_RMDIR_REMOVE_FILES));
 cl_git_pass(git_repository_init(&contained, "submodules/broken", 0));
 git_repository_free(contained);

 status_counts_init(
  counts, expected_files_with_broken, expected_status_with_broken);
 cl_git_pass(git_status_foreach_ext(
  g_repo, &opts, cb_status__match, &counts));
 cl_assert_equal_i(7, counts.entry_count);



 cl_git_pass(git_futils_rmdir_r(
  "submodules/broken/.git", ((void*)0), GIT_RMDIR_REMOVE_FILES));
 cl_git_append2file("submodules/.gitmodules",
  "\n[submodule \"broken\"]\n"
  "\tpath = broken\n"
  "\turl = https://github.com/not/used\n\n");

 status_counts_init(
  counts, expected_files_with_broken, expected_status_with_broken);
 cl_git_pass(git_status_foreach_ext(
  g_repo, &opts, cb_status__match, &counts));
 cl_assert_equal_i(7, counts.entry_count);
}
