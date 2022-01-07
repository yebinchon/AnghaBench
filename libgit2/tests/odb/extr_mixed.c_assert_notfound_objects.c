
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int member_0; } ;
struct TYPE_7__ {TYPE_1__ member_0; } ;
typedef TYPE_2__ git_oid ;
struct TYPE_8__ {int type; int length; int id; } ;
typedef TYPE_3__ git_odb_expand_id ;


 size_t ARRAY_SIZE (int ) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_oid (TYPE_2__*,int *) ;
 int expand_id_test_data ;

__attribute__((used)) static void assert_notfound_objects(git_odb_expand_id *ids)
{
 git_oid expected_id = {{0}};
 size_t num, i;

 num = ARRAY_SIZE(expand_id_test_data);

 for (i = 0; i < num; i++) {
  cl_assert_equal_oid(&expected_id, &ids[i].id);
  cl_assert_equal_i(0, ids[i].length);
  cl_assert_equal_i(0, ids[i].type);
 }
}
