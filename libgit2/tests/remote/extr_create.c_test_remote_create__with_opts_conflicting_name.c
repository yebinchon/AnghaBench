
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_remote ;


 int GIT_EEXISTS ;
 int TEST_URL ;
 int _repo ;
 int cl_assert_equal_p (int *,int *) ;
 int cl_git_fail_with (int ,int ) ;
 int create_with_name (int **,int ,char*,int ) ;

void test_remote_create__with_opts_conflicting_name(void)
{
 git_remote *remote = ((void*)0);

 cl_git_fail_with(GIT_EEXISTS, create_with_name(&remote, _repo, "test", TEST_URL));
 cl_assert_equal_p(remote, ((void*)0));
}
