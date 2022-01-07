
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _odb ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_odb_open (int *,int ) ;

void test_odb_mixed__initialize(void)
{
 cl_git_pass(git_odb_open(&_odb, cl_fixture("duplicate.git/objects")));
}
