
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_patch ;
struct TYPE_6__ {int path; } ;
struct TYPE_5__ {int path; } ;
struct TYPE_7__ {TYPE_2__ new_file; TYPE_1__ old_file; } ;
typedef TYPE_3__ git_diff_delta ;
typedef int git_diff ;


 char* PATCH_CRLF ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_pass (int ) ;
 int git_diff_free (int *) ;
 int git_diff_from_buffer (int **,char const*,int ) ;
 int git_patch_free (int *) ;
 int git_patch_from_diff (int **,int *,int ) ;
 TYPE_3__* git_patch_get_delta (int *) ;
 int strlen (char const*) ;

void test_diff_parse__crlf(void)
{
 const char *text = PATCH_CRLF;
 git_diff *diff;
 git_patch *patch;
 const git_diff_delta *delta;

 cl_git_pass(git_diff_from_buffer(&diff, text, strlen(text)));
 cl_git_pass(git_patch_from_diff(&patch, diff, 0));
 delta = git_patch_get_delta(patch);

 cl_assert_equal_s(delta->old_file.path, "test-file");
 cl_assert_equal_s(delta->new_file.path, "test-file");

 git_patch_free(patch);
 git_diff_free(diff);
}
