
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_tree ;
struct TYPE_6__ {int member_1; char** strings; int * member_0; } ;
typedef TYPE_2__ git_strarray ;
typedef int git_pathspec_match_list ;
typedef int git_pathspec ;
typedef int git_diff_options ;
typedef int git_diff ;
struct TYPE_5__ {int * path; } ;
struct TYPE_7__ {scalar_t__ status; TYPE_1__ new_file; } ;


 int GIT_DELTA_ADDED ;
 int GIT_DELTA_DELETED ;
 int GIT_DELTA_MODIFIED ;
 int GIT_DIFF_OPTIONS_INIT ;
 int GIT_PATHSPEC_DEFAULT ;
 int cl_assert (int *) ;
 int cl_assert_equal_i (int,int) ;
 int cl_assert_equal_s (char*,int *) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_diff_free (int *) ;
 int git_diff_tree_to_tree (int **,int ,int *,int *,int *) ;
 int git_diff_tree_to_workdir (int **,int ,int *,int *) ;
 int git_pathspec_free (int *) ;
 int git_pathspec_match_diff (int **,int *,int ,int *) ;
 TYPE_4__* git_pathspec_match_list_diff_entry (int *,int ) ;
 int * git_pathspec_match_list_entry (int *,int ) ;
 scalar_t__ git_pathspec_match_list_entrycount (int *) ;
 int git_pathspec_match_list_free (int *) ;
 int git_pathspec_match_tree (int **,int *,int ,int *) ;
 int git_pathspec_new (int **,TYPE_2__*) ;
 int git_tree_free (int *) ;
 int * resolve_commit_oid_to_tree (int ,char const*) ;

void test_diff_pathspec__0(void)
{
 const char *a_commit = "26a125ee";
 const char *b_commit = "0017bd4a";
 git_tree *a = resolve_commit_oid_to_tree(g_repo, a_commit);
 git_tree *b = resolve_commit_oid_to_tree(g_repo, b_commit);
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0);
 git_strarray paths = { ((void*)0), 1 };
 char *path;
 git_pathspec *ps;
 git_pathspec_match_list *matches;

 cl_assert(a);
 cl_assert(b);

 path = "*_file";
 paths.strings = &path;
 cl_git_pass(git_pathspec_new(&ps, &paths));

 cl_git_pass(git_pathspec_match_tree(&matches, a, GIT_PATHSPEC_DEFAULT, ps));
 cl_assert_equal_i(7, (int)git_pathspec_match_list_entrycount(matches));
 cl_assert_equal_s("current_file", git_pathspec_match_list_entry(matches,0));
 cl_assert(git_pathspec_match_list_diff_entry(matches,0) == ((void*)0));
 git_pathspec_match_list_free(matches);

 cl_git_pass(git_diff_tree_to_tree(&diff, g_repo, ((void*)0), a, &opts));

 cl_git_pass(git_pathspec_match_diff(
  &matches, diff, GIT_PATHSPEC_DEFAULT, ps));
 cl_assert_equal_i(7, (int)git_pathspec_match_list_entrycount(matches));
 cl_assert(git_pathspec_match_list_diff_entry(matches, 0) != ((void*)0));
 cl_assert(git_pathspec_match_list_entry(matches, 0) == ((void*)0));
 cl_assert_equal_s("current_file",
  git_pathspec_match_list_diff_entry(matches,0)->new_file.path);
 cl_assert_equal_i(GIT_DELTA_ADDED,
  (int)git_pathspec_match_list_diff_entry(matches,0)->status);
 git_pathspec_match_list_free(matches);

 git_diff_free(diff);
 diff = ((void*)0);

 cl_git_pass(git_diff_tree_to_tree(&diff, g_repo, a, b, &opts));

 cl_git_pass(git_pathspec_match_diff(
  &matches, diff, GIT_PATHSPEC_DEFAULT, ps));
 cl_assert_equal_i(3, (int)git_pathspec_match_list_entrycount(matches));
 cl_assert(git_pathspec_match_list_diff_entry(matches, 0) != ((void*)0));
 cl_assert(git_pathspec_match_list_entry(matches, 0) == ((void*)0));
 cl_assert_equal_s("subdir/current_file",
  git_pathspec_match_list_diff_entry(matches,0)->new_file.path);
 cl_assert_equal_i(GIT_DELTA_DELETED,
  (int)git_pathspec_match_list_diff_entry(matches,0)->status);
 git_pathspec_match_list_free(matches);

 git_diff_free(diff);
 diff = ((void*)0);

 cl_git_pass(git_diff_tree_to_workdir(&diff, g_repo, a, &opts));

 cl_git_pass(git_pathspec_match_diff(
  &matches, diff, GIT_PATHSPEC_DEFAULT, ps));
 cl_assert_equal_i(4, (int)git_pathspec_match_list_entrycount(matches));
 cl_assert(git_pathspec_match_list_diff_entry(matches, 0) != ((void*)0));
 cl_assert(git_pathspec_match_list_entry(matches, 0) == ((void*)0));
 cl_assert_equal_s("modified_file",
  git_pathspec_match_list_diff_entry(matches,0)->new_file.path);
 cl_assert_equal_i(GIT_DELTA_MODIFIED,
  (int)git_pathspec_match_list_diff_entry(matches,0)->status);
 git_pathspec_match_list_free(matches);

 git_diff_free(diff);
 diff = ((void*)0);

 git_tree_free(a);
 git_tree_free(b);
 git_pathspec_free(ps);
}
