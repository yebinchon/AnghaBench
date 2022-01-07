
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_filter_list ;


 int GIT_FILTER_TO_WORKTREE ;
 int cl_assert (int) ;
 int cl_assert_equal_sz (int,size_t) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_filter_list_free (int *) ;
 size_t git_filter_list_length (int *) ;
 int git_filter_list_load (int **,int ,int *,char*,int ,int ) ;

void test_filter_custom__can_register_a_custom_filter_in_the_repository(void)
{
 git_filter_list *fl;

 cl_git_pass(git_filter_list_load(
  &fl, g_repo, ((void*)0), "herofile", GIT_FILTER_TO_WORKTREE, 0));

 cl_assert_equal_sz(3, git_filter_list_length(fl));
 git_filter_list_free(fl);

 cl_git_pass(git_filter_list_load(
  &fl, g_repo, ((void*)0), "herocorp", GIT_FILTER_TO_WORKTREE, 0));

 {
  size_t flen = git_filter_list_length(fl);
  cl_assert(flen == 2 || flen == 3);
 }
 git_filter_list_free(fl);

 cl_git_pass(git_filter_list_load(
  &fl, g_repo, ((void*)0), "hero.bin", GIT_FILTER_TO_WORKTREE, 0));

 cl_assert_equal_sz(2, git_filter_list_length(fl));
 git_filter_list_free(fl);

 cl_git_pass(git_filter_list_load(
  &fl, g_repo, ((void*)0), "heroflip", GIT_FILTER_TO_WORKTREE, 0));

 cl_assert_equal_sz(1, git_filter_list_length(fl));
 git_filter_list_free(fl);

 cl_git_pass(git_filter_list_load(
  &fl, g_repo, ((void*)0), "doesntapplytome.bin",
  GIT_FILTER_TO_WORKTREE, 0));

 cl_assert_equal_sz(0, git_filter_list_length(fl));
 git_filter_list_free(fl);
}
