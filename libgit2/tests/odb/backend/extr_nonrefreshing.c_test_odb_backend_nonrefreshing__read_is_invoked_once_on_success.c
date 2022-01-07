
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_object ;
struct TYPE_2__ {int read_calls; } ;


 int GIT_OBJECT_ANY ;
 int _existing_oid ;
 TYPE_1__* _fake ;
 int _repo ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int ,int *,int ) ;

void test_odb_backend_nonrefreshing__read_is_invoked_once_on_success(void)
{
 git_object *obj;

 cl_git_pass(git_object_lookup(&obj, _repo, &_existing_oid, GIT_OBJECT_ANY));

 cl_assert_equal_i(1, _fake->read_calls);

 git_object_free(obj);
}
