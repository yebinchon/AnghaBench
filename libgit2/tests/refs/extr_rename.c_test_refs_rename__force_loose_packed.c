
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int name; } ;
typedef TYPE_1__ git_reference ;
typedef int git_oid ;


 int cl_assert_equal_oid (int *,int ) ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_oid_cpy (int *,int ) ;
 int git_reference_free (TYPE_1__*) ;
 int git_reference_lookup (TYPE_1__**,int ,int ) ;
 int git_reference_rename (TYPE_1__**,TYPE_1__*,int ,int,int *) ;
 int git_reference_target (TYPE_1__*) ;
 int packed_head_name ;
 int packed_test_head_name ;

void test_refs_rename__force_loose_packed(void)
{

 git_reference *looked_up_ref, *renamed_ref;
 git_oid oid;


 cl_git_pass(git_reference_lookup(&looked_up_ref, g_repo, packed_head_name));
 git_oid_cpy(&oid, git_reference_target(looked_up_ref));


 cl_git_pass(git_reference_rename(&renamed_ref, looked_up_ref, packed_test_head_name, 1, ((void*)0)));
 git_reference_free(looked_up_ref);
 git_reference_free(renamed_ref);


 cl_git_pass(git_reference_lookup(&looked_up_ref, g_repo, packed_test_head_name));
 cl_assert_equal_s(looked_up_ref->name, packed_test_head_name);
 cl_assert_equal_oid(&oid, git_reference_target(looked_up_ref));
 git_reference_free(looked_up_ref);


 cl_git_fail(git_reference_lookup(&looked_up_ref, g_repo, packed_head_name));
}
