
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_STATUS_WT_DELETED ;
 int GIT_STATUS_WT_NEW ;
 int assert_ignore_case (int,int ,int ) ;

void test_status_worktree__file_status_honors_core_ignorecase_false(void)
{
 assert_ignore_case(0, GIT_STATUS_WT_DELETED, GIT_STATUS_WT_NEW);
}
