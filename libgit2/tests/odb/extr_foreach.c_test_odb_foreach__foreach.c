
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _odb ;
 int _repo ;
 int cl_assert_equal_i (int,int) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int foreach_cb ;
 int git_odb_foreach (int ,int ,int*) ;
 int git_repository_odb (int *,int ) ;
 int git_repository_open (int *,int ) ;

void test_odb_foreach__foreach(void)
{
 int nobj = 0;

 cl_git_pass(git_repository_open(&_repo, cl_fixture("testrepo.git")));
 git_repository_odb(&_odb, _repo);

 cl_git_pass(git_odb_foreach(_odb, foreach_cb, &nobj));
 cl_assert_equal_i(60 + 1640, nobj);
}
