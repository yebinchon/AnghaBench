
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_submodule ;
typedef int git_repository ;
typedef int git_index ;
struct TYPE_5__ {int count; char** strings; } ;
struct TYPE_6__ {char* old_prefix; char* new_prefix; TYPE_1__ pathspec; int flags; } ;
typedef TYPE_2__ git_diff_options ;
typedef int git_diff ;


 int GIT_DIFF_INCLUDE_UNTRACKED ;
 TYPE_2__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_SUBMODULE_IGNORE_ALL ;
 int GIT_SUBMODULE_IGNORE_DIRTY ;
 int GIT_SUBMODULE_IGNORE_NONE ;
 int GIT_SUBMODULE_IGNORE_UNTRACKED ;
 int check_diff_patches (int *,char const**) ;
 int cl_git_append2file (char*,char*) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_repo_commit_from_index (int *,int *,int *,int,char*) ;
 int g_repo ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int ,int *,TYPE_2__*) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_repository_free (int *) ;
 int git_repository_index (int **,int *) ;
 int git_submodule_add_to_index (int *,int) ;
 int git_submodule_free (int *) ;
 int git_submodule_lookup (int **,int ,char*) ;
 int git_submodule_name (int *) ;
 int git_submodule_open (int **,int *) ;
 int git_submodule_set_ignore (int ,int ,int ) ;
 int p_unlink (char*) ;
 int setup_fixture_submod2 () ;

void test_diff_submodules__invalid_cache(void)
{
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0);
 git_submodule *sm;
 char *smpath = "sm_changed_head";
 git_repository *smrepo;
 git_index *smindex;
 static const char *expected_baseline[] = {
  "diff --git a/sm_changed_head b/sm_changed_head\nindex 4800958..3d9386c 160000\n--- a/sm_changed_head\n+++ b/sm_changed_head\n@@ -1 +1 @@\n-Subproject commit 480095882d281ed676fe5b863569520e54a7d5c0\n+Subproject commit 3d9386c507f6b093471a3e324085657a3c2b4247\n",
  "<END>"
 };
 static const char *expected_unchanged[] = { "<END>" };
 static const char *expected_dirty[] = {
  "diff --git a/sm_changed_head b/sm_changed_head\nindex 3d9386c..3d9386c 160000\n--- a/sm_changed_head\n+++ b/sm_changed_head\n@@ -1 +1 @@\n-Subproject commit 3d9386c507f6b093471a3e324085657a3c2b4247\n+Subproject commit 3d9386c507f6b093471a3e324085657a3c2b4247-dirty\n",
  "<END>"
 };
 static const char *expected_moved[] = {
  "diff --git a/sm_changed_head b/sm_changed_head\nindex 3d9386c..7002348 160000\n--- a/sm_changed_head\n+++ b/sm_changed_head\n@@ -1 +1 @@\n-Subproject commit 3d9386c507f6b093471a3e324085657a3c2b4247\n+Subproject commit 700234833f6ccc20d744b238612646be071acaae\n",
  "<END>"
 };
 static const char *expected_moved_dirty[] = {
  "diff --git a/sm_changed_head b/sm_changed_head\nindex 3d9386c..7002348 160000\n--- a/sm_changed_head\n+++ b/sm_changed_head\n@@ -1 +1 @@\n-Subproject commit 3d9386c507f6b093471a3e324085657a3c2b4247\n+Subproject commit 700234833f6ccc20d744b238612646be071acaae-dirty\n",
  "<END>"
 };

 g_repo = setup_fixture_submod2();

 opts.flags = GIT_DIFF_INCLUDE_UNTRACKED;
 opts.old_prefix = "a"; opts.new_prefix = "b";
 opts.pathspec.count = 1;
 opts.pathspec.strings = &smpath;


 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));
 check_diff_patches(diff, expected_baseline);
 git_diff_free(diff);


 cl_git_pass(git_submodule_lookup(&sm, g_repo, smpath));
 cl_git_pass(git_submodule_add_to_index(sm, 1));

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));
 check_diff_patches(diff, expected_unchanged);
 git_diff_free(diff);


 cl_git_mkfile("submod2/sm_changed_head/new_around_here", "hello");
 git_submodule_set_ignore(g_repo, git_submodule_name(sm), GIT_SUBMODULE_IGNORE_NONE);

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));
 check_diff_patches(diff, expected_dirty);
 git_diff_free(diff);

 git_submodule_set_ignore(g_repo, git_submodule_name(sm), GIT_SUBMODULE_IGNORE_UNTRACKED);

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));
 check_diff_patches(diff, expected_unchanged);
 git_diff_free(diff);


 cl_git_append2file(
  "submod2/sm_changed_head/file_to_modify", "\nmore stuff\n");

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));
 check_diff_patches(diff, expected_dirty);
 git_diff_free(diff);

 git_submodule_free(sm);

 cl_git_pass(git_submodule_lookup(&sm, g_repo, smpath));

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));
 check_diff_patches(diff, expected_dirty);
 git_diff_free(diff);

 git_submodule_set_ignore(g_repo, git_submodule_name(sm), GIT_SUBMODULE_IGNORE_DIRTY);

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));
 check_diff_patches(diff, expected_unchanged);
 git_diff_free(diff);


 cl_git_pass(git_submodule_open(&smrepo, sm));
 cl_git_pass(git_repository_index(&smindex, smrepo));
 cl_git_pass(git_index_add_bypath(smindex, "file_to_modify"));

 git_submodule_set_ignore(g_repo, git_submodule_name(sm), GIT_SUBMODULE_IGNORE_UNTRACKED);

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));
 check_diff_patches(diff, expected_dirty);
 git_diff_free(diff);

 git_submodule_set_ignore(g_repo, git_submodule_name(sm), GIT_SUBMODULE_IGNORE_DIRTY);

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));
 check_diff_patches(diff, expected_unchanged);
 git_diff_free(diff);


 cl_repo_commit_from_index(((void*)0), smrepo, ((void*)0), 1372350000, "Move it");

 git_submodule_set_ignore(g_repo, git_submodule_name(sm), GIT_SUBMODULE_IGNORE_DIRTY);

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));
 check_diff_patches(diff, expected_moved);
 git_diff_free(diff);

 git_submodule_set_ignore(g_repo, git_submodule_name(sm), GIT_SUBMODULE_IGNORE_ALL);

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));
 check_diff_patches(diff, expected_unchanged);
 git_diff_free(diff);

 git_submodule_set_ignore(g_repo, git_submodule_name(sm), GIT_SUBMODULE_IGNORE_NONE);

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));
 check_diff_patches(diff, expected_moved_dirty);
 git_diff_free(diff);

 p_unlink("submod2/sm_changed_head/new_around_here");

 git_submodule_free(sm);

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));
 check_diff_patches(diff, expected_moved);
 git_diff_free(diff);

 git_index_free(smindex);
 git_repository_free(smrepo);
}
