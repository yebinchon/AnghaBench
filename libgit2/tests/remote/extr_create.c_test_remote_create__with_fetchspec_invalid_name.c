
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_remote ;


 int GIT_EINVALIDSPEC ;
 int TEST_URL ;
 int _repo ;
 int cl_assert_equal_p (int *,int *) ;
 int cl_git_fail_with (int ,int ) ;
 int git_remote_create_with_fetchspec (int **,int ,int *,int ,int *) ;

void test_remote_create__with_fetchspec_invalid_name(void)
{
 git_remote *remote = ((void*)0);

 cl_git_fail_with(GIT_EINVALIDSPEC, git_remote_create_with_fetchspec(&remote, _repo, ((void*)0), TEST_URL, ((void*)0)));
 cl_assert_equal_p(remote, ((void*)0));
}
