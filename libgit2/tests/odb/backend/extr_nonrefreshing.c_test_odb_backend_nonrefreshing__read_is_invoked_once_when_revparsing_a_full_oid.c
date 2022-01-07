
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_object ;
struct TYPE_2__ {int read_calls; } ;


 int GIT_ENOTFOUND ;
 TYPE_1__* _fake ;
 int _repo ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_fail_with (int ,int ) ;
 int git_revparse_single (int **,int ,char*) ;

void test_odb_backend_nonrefreshing__read_is_invoked_once_when_revparsing_a_full_oid(void)
{
 git_object *obj;

 cl_git_fail_with(
  git_revparse_single(&obj, _repo, "deadbeefdeadbeefdeadbeefdeadbeefdeadbeef"),
  GIT_ENOTFOUND);

 cl_assert_equal_i(1, _fake->read_calls);
}
