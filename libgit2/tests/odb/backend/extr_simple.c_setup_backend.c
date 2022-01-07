
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_odb_backend ;
typedef int fake_object ;


 int _odb ;
 int _repo ;
 int build_fake_backend (int **,int const*) ;
 int cl_git_pass (int ) ;
 int git_odb_add_backend (int ,int *,int) ;
 int git_repository_odb__weakptr (int *,int ) ;

__attribute__((used)) static void setup_backend(const fake_object *objs)
{
 git_odb_backend *backend;

 cl_git_pass(build_fake_backend(&backend, objs));

 cl_git_pass(git_repository_odb__weakptr(&_odb, _repo));
 cl_git_pass(git_odb_add_backend(_odb, backend, 10));
}
