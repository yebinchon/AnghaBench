
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; char* old_prefix; char* new_prefix; } ;
typedef TYPE_1__ git_diff_options ;
typedef int git_diff ;


 int GIT_DIFF_INCLUDE_IGNORED ;
 int GIT_DIFF_INCLUDE_UNMODIFIED ;
 int GIT_DIFF_INCLUDE_UNTRACKED ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int check_diff_patches (int *,char const**) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int ,int *,TYPE_1__*) ;
 int setup_fixture_submodules () ;

void test_diff_submodules__unmodified_submodule(void)
{
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0);
 static const char *expected[] = {
  "<SKIP>",
  ((void*)0),
  ((void*)0),
  "diff --git a/modified b/modified\nindex 092bfb9..452216e 100644\n--- a/modified\n+++ b/modified\n@@ -1 +1,2 @@\n-yo\n+changed\n+\n",
  ((void*)0),
  ((void*)0),
  ((void*)0),
  "<END>"
 };

 g_repo = setup_fixture_submodules();

 opts.flags = GIT_DIFF_INCLUDE_IGNORED |
  GIT_DIFF_INCLUDE_UNTRACKED |
  GIT_DIFF_INCLUDE_UNMODIFIED;
 opts.old_prefix = "a"; opts.new_prefix = "b";

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));
 check_diff_patches(diff, expected);
 git_diff_free(diff);
}
