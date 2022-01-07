
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_REPOSITORY_STATE_NONE ;
 int assert_repo_state (int ) ;

void test_repo_state__none_with_HEAD_attached(void)
{
 assert_repo_state(GIT_REPOSITORY_STATE_NONE);
}
