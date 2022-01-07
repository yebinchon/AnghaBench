
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_odb_backend ;


 int _odb ;
 int * _repo ;
 int cl_assert (int) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int foreach_cb ;
 int git_odb_add_backend (int ,int *,int) ;
 int git_odb_backend_one_pack (int **,int ) ;
 int git_odb_foreach (int ,int ,int*) ;
 int git_odb_new (int *) ;

void test_odb_foreach__one_pack(void)
{
 git_odb_backend *backend = ((void*)0);
 int nobj = 0;

 cl_git_pass(git_odb_new(&_odb));
 cl_git_pass(git_odb_backend_one_pack(&backend, cl_fixture("testrepo.git/objects/pack/pack-a81e489679b7d3418f9ab594bda8ceb37dd4c695.idx")));
 cl_git_pass(git_odb_add_backend(_odb, backend, 1));
 _repo = ((void*)0);

 cl_git_pass(git_odb_foreach(_odb, foreach_cb, &nobj));
 cl_assert(nobj == 1628);
}
