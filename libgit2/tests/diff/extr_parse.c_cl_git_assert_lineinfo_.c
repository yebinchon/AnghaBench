
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_patch ;
struct TYPE_3__ {int num_lines; int new_lineno; int old_lineno; } ;
typedef TYPE_1__ git_diff_line ;


 int cl_assert_equal_i_src (int,int ,char const*,int) ;
 int cl_git_expect (int ,int ,char const*,int) ;
 int git_patch_get_line_in_hunk (TYPE_1__ const**,int *,size_t,size_t) ;

__attribute__((used)) static void cl_git_assert_lineinfo_(int old_lineno, int new_lineno, int num_lines, git_patch *patch, size_t hunk_idx, size_t line_idx, const char *file, int lineno)
{
 const git_diff_line *line;

 cl_git_expect(git_patch_get_line_in_hunk(&line, patch, hunk_idx, line_idx), 0, file, lineno);
 cl_assert_equal_i_src(old_lineno, line->old_lineno, file, lineno);
 cl_assert_equal_i_src(new_lineno, line->new_lineno, file, lineno);
 cl_assert_equal_i_src(num_lines, line->num_lines, file, lineno);
}
