
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _odb ;
 int check_backend_sorting (int ) ;
 int cl_git_pass (int ) ;
 int git_odb_add_backend (int ,int ,int) ;
 int new_backend (int) ;

void test_odb_sorting__basic_backends_sorting(void)
{
 cl_git_pass(git_odb_add_backend(_odb, new_backend(0), 5));
 cl_git_pass(git_odb_add_backend(_odb, new_backend(2), 3));
 cl_git_pass(git_odb_add_backend(_odb, new_backend(1), 4));
 cl_git_pass(git_odb_add_backend(_odb, new_backend(3), 1));

 check_backend_sorting(_odb);
}
