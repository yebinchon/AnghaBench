
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_diff ;


 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int file_cb ;
 int git_diff_foreach (int *,int ,int *,int *,int *,int*) ;
 int git_diff_free (int *) ;
 int git_diff_from_buffer (int **,char const*,int ) ;
 int strlen (char const*) ;

void test_diff_parse__foreach_works_with_parsed_patch(void)
{
 const char patch[] =
     "diff --git a/obj1 b/obj2\n"
     "index 1234567..7654321 10644\n"
     "--- a/obj1\n"
     "+++ b/obj2\n"
     "@@ -1 +1 @@\n"
     "-abcde\n"
     "+12345\n";
 int called = 0;
 git_diff *diff;

 cl_git_pass(git_diff_from_buffer(&diff, patch, strlen(patch)));
 cl_git_pass(git_diff_foreach(diff, file_cb, ((void*)0), ((void*)0), ((void*)0), &called));
 cl_assert_equal_i(called, 1);

 git_diff_free(diff);
}
