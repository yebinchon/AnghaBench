
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_patch ;
typedef int git_diff_hunk ;
typedef int git_diff ;


 int cl_assert_equal_i (size_t,size_t) ;
 int cl_git_assert_lineinfo (int,int,int,int *,int ,int ) ;
 int cl_git_pass (int ) ;
 int git_diff_free (int *) ;
 int git_diff_from_buffer (int **,char const*,int ) ;
 int git_patch_free (int *) ;
 int git_patch_from_diff (int **,int *,int ) ;
 int git_patch_get_hunk (int const**,size_t*,int *,int ) ;
 int strlen (char const*) ;

void test_diff_parse__issue4672(void)
{
 const char *text = "diff --git a/a b/a\n"
 "index 7f129fd..af431f2 100644\n"
 "--- a/a\n"
 "+++ b/a\n"
 "@@ -3 +3 @@\n"
 "-a contents 2\n"
 "+a contents\n";

 git_diff *diff;
 git_patch *patch;
 const git_diff_hunk *hunk;
 size_t n, l = 0;

 cl_git_pass(git_diff_from_buffer(&diff, text, strlen(text)));
 cl_git_pass(git_patch_from_diff(&patch, diff, 0));
 cl_git_pass(git_patch_get_hunk(&hunk, &n, patch, 0));

 cl_git_assert_lineinfo(3, -1, 1, patch, 0, l++);
 cl_git_assert_lineinfo(-1, 3, 1, patch, 0, l++);

 cl_assert_equal_i(n, l);

 git_patch_free(patch);
 git_diff_free(diff);
}
