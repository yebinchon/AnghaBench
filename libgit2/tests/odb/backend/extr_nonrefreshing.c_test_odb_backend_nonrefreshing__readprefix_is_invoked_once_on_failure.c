
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_object ;
struct TYPE_2__ {int read_prefix_calls; } ;


 int GIT_ENOTFOUND ;
 int GIT_OBJECT_ANY ;
 TYPE_1__* _fake ;
 int _nonexisting_oid ;
 int _repo ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_fail_with (int ,int ) ;
 int git_object_lookup_prefix (int **,int ,int *,int,int ) ;

void test_odb_backend_nonrefreshing__readprefix_is_invoked_once_on_failure(void)
{
 git_object *obj;

 cl_git_fail_with(
  git_object_lookup_prefix(&obj, _repo, &_nonexisting_oid, 7, GIT_OBJECT_ANY),
  GIT_ENOTFOUND);

 cl_assert_equal_i(1, _fake->read_prefix_calls);
}
