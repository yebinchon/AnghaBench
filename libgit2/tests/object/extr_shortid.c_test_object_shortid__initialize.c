
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _repo ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_repository_open (int *,int ) ;

void test_object_shortid__initialize(void)
{
 cl_git_pass(git_repository_open(&_repo, cl_fixture("duplicate.git")));
}
