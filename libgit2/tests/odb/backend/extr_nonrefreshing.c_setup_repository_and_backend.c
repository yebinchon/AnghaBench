
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_odb_backend ;
typedef int git_odb ;
typedef int fake_backend ;


 int * _fake ;
 int _objects ;
 int _repo ;
 int build_fake_backend (int **,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int git_odb_add_backend (int *,int *,int) ;
 int git_repository_odb__weakptr (int **,int ) ;

__attribute__((used)) static void setup_repository_and_backend(void)
{
 git_odb *odb = ((void*)0);
 git_odb_backend *backend = ((void*)0);

 _repo = cl_git_sandbox_init("testrepo.git");

 cl_git_pass(build_fake_backend(&backend, _objects));

 cl_git_pass(git_repository_odb__weakptr(&odb, _repo));
 cl_git_pass(git_odb_add_backend(odb, backend, 10));

 _fake = (fake_backend *)backend;
}
