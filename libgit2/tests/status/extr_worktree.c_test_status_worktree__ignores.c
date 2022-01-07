
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 scalar_t__ GIT_STATUS_IGNORED ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 scalar_t__ entry_count0 ;
 char** entry_paths0 ;
 scalar_t__* entry_statuses0 ;
 int git_status_should_ignore (int*,int *,char*) ;

void test_status_worktree__ignores(void)
{
 int i, ignored;
 git_repository *repo = cl_git_sandbox_init("status");

 for (i = 0; i < (int)entry_count0; i++) {
  cl_git_pass(
   git_status_should_ignore(&ignored, repo, entry_paths0[i])
  );
  cl_assert(ignored == (entry_statuses0[i] == GIT_STATUS_IGNORED));
 }

 cl_git_pass(
  git_status_should_ignore(&ignored, repo, "nonexistent_file")
 );
 cl_assert(!ignored);

 cl_git_pass(
  git_status_should_ignore(&ignored, repo, "ignored_nonexistent_file")
 );
 cl_assert(ignored);
}
