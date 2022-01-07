
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _obj ;
 int * _odb ;
 int _repo ;
 int cl_git_sandbox_init (char*) ;

void test_odb_backend_simple__initialize(void)
{
 _repo = cl_git_sandbox_init("testrepo.git");
 _odb = ((void*)0);
 _obj = ((void*)0);
}
