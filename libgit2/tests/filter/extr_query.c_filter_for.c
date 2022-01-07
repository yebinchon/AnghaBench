
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_filter_list ;


 int GIT_FILTER_TO_WORKTREE ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_filter_list_contains (int *,char const*) ;
 int git_filter_list_free (int *) ;
 int git_filter_list_load (int **,int ,int *,char const*,int ,int ) ;

__attribute__((used)) static int filter_for(const char *filename, const char *filter)
{
 git_filter_list *fl;
 int filtered;

 cl_git_pass(git_filter_list_load(
  &fl, g_repo, ((void*)0), filename, GIT_FILTER_TO_WORKTREE, 0));
 filtered = git_filter_list_contains(fl, filter);
 git_filter_list_free(fl);

 return filtered;
}
