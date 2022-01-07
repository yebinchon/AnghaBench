
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_submodule ;
typedef int git_repository ;
struct TYPE_3__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 int assert_submodule_exists (int *,char*) ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int,size_t) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int cl_sandbox_supports_8dot3 () ;
 int clar__skip () ;
 int git_repository__reserved_names (TYPE_1__**,size_t*,int *,int) ;
 int git_repository_free (int *) ;
 int git_submodule_free (int *) ;
 int git_submodule_lookup (int **,int *,char*) ;
 int git_submodule_open (int **,int *) ;
 int * setup_fixture_submod2 () ;

void test_repo_reservedname__submodule_pointer(void)
{
}
