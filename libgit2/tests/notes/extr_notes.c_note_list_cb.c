
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_2__ {int annotated_object_sha; int note_sha; } ;


 unsigned int EXPECTATIONS_COUNT ;
 int cl_assert (int) ;
 int cl_assert_equal_oid (int *,int const*) ;
 int cl_git_pass (int ) ;
 int git_oid_fromstr (int *,int ) ;
 TYPE_1__* list_expectations ;

__attribute__((used)) static int note_list_cb(
 const git_oid *blob_id, const git_oid *annotated_obj_id, void *payload)
{
 git_oid expected_note_oid, expected_target_oid;

 unsigned int *count = (unsigned int *)payload;

 cl_assert(*count < EXPECTATIONS_COUNT);

 cl_git_pass(git_oid_fromstr(&expected_note_oid, list_expectations[*count].note_sha));
 cl_assert_equal_oid(&expected_note_oid, blob_id);

 cl_git_pass(git_oid_fromstr(&expected_target_oid, list_expectations[*count].annotated_object_sha));
 cl_assert_equal_oid(&expected_target_oid, annotated_obj_id);

 (*count)++;

 return 0;
}
