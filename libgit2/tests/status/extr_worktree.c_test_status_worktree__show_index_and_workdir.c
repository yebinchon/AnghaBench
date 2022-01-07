
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_STATUS_SHOW_INDEX_AND_WORKDIR ;
 int assert_show (int ,int ,int ,int ,int ,int ) ;
 int cl_git_sandbox_init (char*) ;
 int entry_count0 ;
 int entry_paths0 ;
 int entry_statuses0 ;

void test_status_worktree__show_index_and_workdir(void)
{
 assert_show(entry_count0, entry_paths0, entry_statuses0,
  cl_git_sandbox_init("status"), GIT_STATUS_SHOW_INDEX_AND_WORKDIR, 0);
}
