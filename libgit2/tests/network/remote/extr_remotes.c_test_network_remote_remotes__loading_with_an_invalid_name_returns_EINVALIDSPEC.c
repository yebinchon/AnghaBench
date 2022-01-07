
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_EINVALIDSPEC ;
 int * _remote ;
 int _repo ;
 int cl_assert_equal_i (int ,int ) ;
 int git_remote_free (int *) ;
 int git_remote_lookup (int **,int ,char*) ;

void test_network_remote_remotes__loading_with_an_invalid_name_returns_EINVALIDSPEC(void)
{
 git_remote_free(_remote);
 _remote = ((void*)0);

 cl_assert_equal_i(GIT_EINVALIDSPEC, git_remote_lookup(&_remote, _repo, "Inv@{id"));
}
