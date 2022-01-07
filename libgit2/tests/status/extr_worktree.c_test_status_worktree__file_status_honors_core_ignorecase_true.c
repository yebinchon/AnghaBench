
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_STATUS_CURRENT ;
 int assert_ignore_case (int,int ,int ) ;

void test_status_worktree__file_status_honors_core_ignorecase_true(void)
{
 assert_ignore_case(1, GIT_STATUS_CURRENT, GIT_STATUS_CURRENT);
}
