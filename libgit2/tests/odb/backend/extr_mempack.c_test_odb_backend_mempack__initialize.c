
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_odb_backend ;


 int _odb ;
 int _repo ;
 int cl_git_pass (int ) ;
 int git_mempack_new (int **) ;
 int git_odb_add_backend (int ,int *,int) ;
 int git_odb_new (int *) ;
 int git_repository_wrap_odb (int *,int ) ;

void test_odb_backend_mempack__initialize(void)
{
 git_odb_backend *backend;

 cl_git_pass(git_mempack_new(&backend));
 cl_git_pass(git_odb_new(&_odb));
 cl_git_pass(git_odb_add_backend(_odb, backend, 10));
 cl_git_pass(git_repository_wrap_odb(&_repo, _odb));
}
