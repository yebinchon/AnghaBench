
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_diff ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_DIFF_FORMAT_PATCH ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_diff_free (int *) ;
 int git_diff_from_buffer (int **,char const*,int ) ;
 int git_diff_to_buf (TYPE_1__*,int *,int ) ;
 int strlen (char const*) ;

void test_diff_parse__parsing_minimal_patch_succeeds(void)
{
 const char patch[] =
     "diff --git a/obj1 b/obj2\n"
     "index 1234567..7654321 10644\n"
     "--- a/obj1\n"
     "+++ b/obj2\n"
     "@@ -1 +1 @@\n"
     "-a\n"
     "+\n";
 git_buf buf = GIT_BUF_INIT;
 git_diff *diff;

 cl_git_pass(git_diff_from_buffer(&diff, patch, strlen(patch)));
 cl_git_pass(git_diff_to_buf(&buf, diff, GIT_DIFF_FORMAT_PATCH));
 cl_assert_equal_s(patch, buf.ptr);

 git_diff_free(diff);
 git_buf_dispose(&buf);
}
