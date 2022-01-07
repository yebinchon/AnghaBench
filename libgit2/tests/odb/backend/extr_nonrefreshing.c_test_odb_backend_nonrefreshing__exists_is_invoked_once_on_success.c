
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_odb ;
struct TYPE_2__ {int exists_calls; } ;


 int _existing_oid ;
 TYPE_1__* _fake ;
 int _repo ;
 int cl_assert_equal_b (int,int ) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int git_odb_exists (int *,int *) ;
 int git_repository_odb__weakptr (int **,int ) ;

void test_odb_backend_nonrefreshing__exists_is_invoked_once_on_success(void)
{
 git_odb *odb;

 cl_git_pass(git_repository_odb__weakptr(&odb, _repo));
 cl_assert_equal_b(1, git_odb_exists(odb, &_existing_oid));

 cl_assert_equal_i(1, _fake->exists_calls);
}
