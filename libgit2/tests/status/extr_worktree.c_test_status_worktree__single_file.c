
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 scalar_t__ entry_count0 ;
 int * entry_paths0 ;
 unsigned int* entry_statuses0 ;
 int git_status_file (unsigned int*,int *,int ) ;

void test_status_worktree__single_file(void)
{
 int i;
 unsigned int status_flags;
 git_repository *repo = cl_git_sandbox_init("status");

 for (i = 0; i < (int)entry_count0; i++) {
  cl_git_pass(
   git_status_file(&status_flags, repo, entry_paths0[i])
  );
  cl_assert(entry_statuses0[i] == status_flags);
 }
}
