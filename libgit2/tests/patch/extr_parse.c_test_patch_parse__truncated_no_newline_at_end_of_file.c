
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_patch ;
struct TYPE_3__ {int content; } ;
typedef TYPE_1__ git_diff_line ;


 char* PATCH_APPEND_NO_NL ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_pass (int ) ;
 int git_patch_free (int *) ;
 int git_patch_from_buffer (int **,char*,size_t,int *) ;
 int git_patch_get_line_in_hunk (TYPE_1__ const**,int *,int ,int) ;
 size_t strlen (char*) ;

void test_patch_parse__truncated_no_newline_at_end_of_file(void)
{
 size_t len = strlen(PATCH_APPEND_NO_NL) - strlen("at end of file\n");
 const git_diff_line *line;
 git_patch *patch;

 cl_git_pass(git_patch_from_buffer(&patch, PATCH_APPEND_NO_NL, len, ((void*)0)));
 cl_git_pass(git_patch_get_line_in_hunk(&line, patch, 0, 4));
 cl_assert_equal_s(line->content, "\\ No newline ");

 git_patch_free(patch);
}
