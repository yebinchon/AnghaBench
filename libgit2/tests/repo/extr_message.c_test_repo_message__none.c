
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 int _repo ;
 int cl_assert_equal_i (int ,int ) ;
 int git_repository_message (int *,int ) ;

void test_repo_message__none(void)
{
 git_buf actual = GIT_BUF_INIT;
 cl_assert_equal_i(GIT_ENOTFOUND, git_repository_message(&actual, _repo));
}
