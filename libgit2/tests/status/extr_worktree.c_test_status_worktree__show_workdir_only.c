
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_STATUS_SHOW_WORKDIR_ONLY ;
 int assert_show (int ,int ,int ,int ,int ,int ) ;
 int cl_git_sandbox_init (char*) ;
 int entry_count6 ;
 int entry_paths6 ;
 int entry_statuses6 ;

void test_status_worktree__show_workdir_only(void)
{
 assert_show(entry_count6, entry_paths6, entry_statuses6,
  cl_git_sandbox_init("status"), GIT_STATUS_SHOW_WORKDIR_ONLY, 0);
}
