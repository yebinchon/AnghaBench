
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_tree ;
struct TYPE_4__ {char* old_prefix; char* new_prefix; int flags; } ;
typedef TYPE_1__ git_diff_options ;
typedef int git_diff ;


 int GIT_DIFF_INCLUDE_UNTRACKED ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int check_diff_patches (int *,char const**) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_diff_free (int *) ;
 int git_diff_tree_to_index (int **,int ,int *,int *,TYPE_1__*) ;
 int git_repository_head_tree (int **,int ) ;
 int git_tree_free (int *) ;
 int setup_fixture_submod2 () ;

void test_diff_submodules__submod2_head_to_index(void)
{
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_tree *head;
 git_diff *diff = ((void*)0);
 static const char *expected[] = {
  "<SKIP>",
  "diff --git a/sm_added_and_uncommited b/sm_added_and_uncommited\nnew file mode 160000\nindex 0000000..4800958\n--- /dev/null\n+++ b/sm_added_and_uncommited\n@@ -0,0 +1 @@\n+Subproject commit 480095882d281ed676fe5b863569520e54a7d5c0\n",
  "<END>"
 };

 g_repo = setup_fixture_submod2();

 cl_git_pass(git_repository_head_tree(&head, g_repo));

 opts.flags = GIT_DIFF_INCLUDE_UNTRACKED;
 opts.old_prefix = "a"; opts.new_prefix = "b";

 cl_git_pass(git_diff_tree_to_index(&diff, g_repo, head, ((void*)0), &opts));
 check_diff_patches(diff, expected);
 git_diff_free(diff);

 git_tree_free(head);
}
