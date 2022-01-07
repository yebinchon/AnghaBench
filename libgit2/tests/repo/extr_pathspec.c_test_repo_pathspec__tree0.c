
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_tree ;
struct TYPE_3__ {int count; int strings; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_pathspec_match_list ;
typedef int git_pathspec ;
typedef int git_object ;


 int ARRAY_SIZE (int ) ;
 int GIT_PATHSPEC_FIND_FAILURES ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_assert_equal_sz (int,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_object_free (int *) ;
 int git_pathspec_free (int *) ;
 int git_pathspec_match_list_entry (int *,int) ;
 int git_pathspec_match_list_entrycount (int *) ;
 int git_pathspec_match_list_failed_entry (int *,int) ;
 int git_pathspec_match_list_failed_entrycount (int *) ;
 int git_pathspec_match_list_free (int *) ;
 int git_pathspec_match_tree (int **,int *,int ,int *) ;
 int git_pathspec_new (int **,TYPE_1__*) ;
 int git_revparse_single (int **,int ,char*) ;
 int str0 ;

void test_repo_pathspec__tree0(void)
{
 git_object *tree;
 git_strarray s;
 git_pathspec *ps;
 git_pathspec_match_list *m;


 s.strings = str0; s.count = ARRAY_SIZE(str0);
 cl_git_pass(git_pathspec_new(&ps, &s));

 cl_git_pass(git_revparse_single(&tree, g_repo, "HEAD~2^{tree}"));

 cl_git_pass(git_pathspec_match_tree(&m, (git_tree *)tree,
  GIT_PATHSPEC_FIND_FAILURES, ps));
 cl_assert_equal_sz(4, git_pathspec_match_list_entrycount(m));
 cl_assert_equal_s("current_file", git_pathspec_match_list_entry(m, 0));
 cl_assert_equal_s("modified_file", git_pathspec_match_list_entry(m, 1));
 cl_assert_equal_s("staged_changes_modified_file", git_pathspec_match_list_entry(m, 2));
 cl_assert_equal_s("staged_delete_modified_file", git_pathspec_match_list_entry(m, 3));
 cl_assert_equal_s(((void*)0), git_pathspec_match_list_entry(m, 4));
 cl_assert_equal_sz(2, git_pathspec_match_list_failed_entrycount(m));
 cl_assert_equal_s("new_file", git_pathspec_match_list_failed_entry(m, 0));
 cl_assert_equal_s("garbage", git_pathspec_match_list_failed_entry(m, 1));
 cl_assert_equal_s(((void*)0), git_pathspec_match_list_failed_entry(m, 2));
 git_pathspec_match_list_free(m);

 git_object_free(tree);

 cl_git_pass(git_revparse_single(&tree, g_repo, "HEAD^{tree}"));

 cl_git_pass(git_pathspec_match_tree(&m, (git_tree *)tree,
  GIT_PATHSPEC_FIND_FAILURES, ps));
 cl_assert_equal_sz(7, git_pathspec_match_list_entrycount(m));
 cl_assert_equal_s("current_file", git_pathspec_match_list_entry(m, 0));
 cl_assert_equal_s("modified_file", git_pathspec_match_list_entry(m, 1));
 cl_assert_equal_s("staged_changes_modified_file", git_pathspec_match_list_entry(m, 2));
 cl_assert_equal_s("staged_delete_modified_file", git_pathspec_match_list_entry(m, 3));
 cl_assert_equal_s("subdir/current_file", git_pathspec_match_list_entry(m, 4));
 cl_assert_equal_s("subdir/deleted_file", git_pathspec_match_list_entry(m, 5));
 cl_assert_equal_s("subdir/modified_file", git_pathspec_match_list_entry(m, 6));
 cl_assert_equal_s(((void*)0), git_pathspec_match_list_entry(m, 7));
 cl_assert_equal_sz(2, git_pathspec_match_list_failed_entrycount(m));
 cl_assert_equal_s("new_file", git_pathspec_match_list_failed_entry(m, 0));
 cl_assert_equal_s("garbage", git_pathspec_match_list_failed_entry(m, 1));
 cl_assert_equal_s(((void*)0), git_pathspec_match_list_failed_entry(m, 2));
 git_pathspec_match_list_free(m);

 git_object_free(tree);

 git_pathspec_free(ps);
}
