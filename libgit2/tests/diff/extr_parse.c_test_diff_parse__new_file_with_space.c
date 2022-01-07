
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int new_prefix; int old_prefix; } ;
struct TYPE_12__ {TYPE_4__* delta; TYPE_2__ diff_opts; } ;
typedef TYPE_5__ git_patch ;
typedef int git_diff ;
struct TYPE_10__ {int path; } ;
struct TYPE_8__ {int path; } ;
struct TYPE_11__ {TYPE_3__ new_file; TYPE_1__ old_file; } ;


 char* PATCH_ORIGINAL_NEW_FILE_WITH_SPACE ;
 int cl_assert_equal_p (int ,int *) ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_pass (int ) ;
 int git_diff_free (int *) ;
 int git_diff_from_buffer (int **,char const*,int ) ;
 int git_patch_free (TYPE_5__*) ;
 int git_patch_from_diff (TYPE_5__**,int *,int ) ;
 int strlen (char const*) ;

void test_diff_parse__new_file_with_space(void)
{
 const char *content = PATCH_ORIGINAL_NEW_FILE_WITH_SPACE;
 git_patch *patch;
 git_diff *diff;

 cl_git_pass(git_diff_from_buffer(&diff, content, strlen(content)));
 cl_git_pass(git_patch_from_diff((git_patch **) &patch, diff, 0));

 cl_assert_equal_p(patch->diff_opts.old_prefix, ((void*)0));
 cl_assert_equal_p(patch->delta->old_file.path, ((void*)0));
 cl_assert_equal_s(patch->diff_opts.new_prefix, "b/");
 cl_assert_equal_s(patch->delta->new_file.path, "sp ace.txt");

 git_patch_free(patch);
 git_diff_free(diff);
}
