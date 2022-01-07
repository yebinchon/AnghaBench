
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
typedef int git_index ;
struct TYPE_10__ {int flags; } ;
typedef TYPE_1__ git_diff_options ;
struct TYPE_11__ {int flags; } ;
typedef TYPE_2__ git_diff_find_options ;
typedef int git_diff ;
typedef int exp ;
struct TYPE_12__ {int * file_status; int files; } ;
typedef TYPE_3__ diff_expects ;


 size_t GIT_DELTA_RENAMED ;
 int GIT_DIFF_FIND_AND_BREAK_REWRITES ;
 int GIT_DIFF_FIND_FOR_UNTRACKED ;
 TYPE_2__ GIT_DIFF_FIND_OPTIONS_INIT ;
 int GIT_DIFF_FIND_RENAMES_FROM_REWRITES ;
 int GIT_DIFF_INCLUDE_UNTRACKED ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char const*) ;
 int cl_git_rmfile (char*) ;
 int diff_binary_cb ;
 int diff_file_cb ;
 int diff_hunk_cb ;
 int diff_line_cb ;
 int g_repo ;
 int git_diff_find_similar (int *,TYPE_2__*) ;
 int git_diff_foreach (int *,int ,int ,int ,int ,TYPE_3__*) ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int ,int *,TYPE_1__*) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_repository_index (int **,int ) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static void expect_files_renamed(const char *one, const char *two, uint32_t whitespace_flags)
{
 git_index *index;
 git_diff *diff = ((void*)0);
 diff_expects exp;
 git_diff_options diffopts = GIT_DIFF_OPTIONS_INIT;
 git_diff_find_options findopts = GIT_DIFF_FIND_OPTIONS_INIT;

 diffopts.flags = GIT_DIFF_INCLUDE_UNTRACKED;
 findopts.flags = GIT_DIFF_FIND_FOR_UNTRACKED |
  GIT_DIFF_FIND_AND_BREAK_REWRITES |
  GIT_DIFF_FIND_RENAMES_FROM_REWRITES |
  whitespace_flags;

 cl_git_pass(git_repository_index(&index, g_repo));

 cl_git_rewritefile("renames/ikeepsix.txt", one);
 cl_git_pass(git_index_add_bypath(index, "ikeepsix.txt"));

 cl_git_rmfile("renames/ikeepsix.txt");
 cl_git_rewritefile("renames/ikeepsix2.txt", two);

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, index, &diffopts));
 cl_git_pass(git_diff_find_similar(diff, &findopts));

 memset(&exp, 0, sizeof(exp));

 cl_git_pass(git_diff_foreach(
  diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
 cl_assert_equal_i(1, exp.files);
 cl_assert_equal_i(1, exp.file_status[GIT_DELTA_RENAMED]);

 git_diff_free(diff);
 git_index_free(index);
}
