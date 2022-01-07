
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_STATUS_SHOW_INDEX_ONLY ;
 int assert_show (int ,int ,int ,int ,int ,int ) ;
 int cl_git_sandbox_init (char*) ;
 int entry_count5 ;
 int entry_paths5 ;
 int entry_statuses5 ;

void test_status_worktree__show_index_only(void)
{
 assert_show(entry_count5, entry_paths5, entry_statuses5,
  cl_git_sandbox_init("status"), GIT_STATUS_SHOW_INDEX_ONLY, 0);
}
