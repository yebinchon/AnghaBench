
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int name; } ;
typedef TYPE_1__ git_reference ;
typedef int git_oid ;


 int GIT_REFERENCE_DIRECT ;
 int cl_assert (int) ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_oid_cpy (int *,int ) ;
 int git_reference_create (TYPE_1__**,int ,int ,int *,int ,int *) ;
 int git_reference_free (TYPE_1__*) ;
 int git_reference_lookup (TYPE_1__**,int ,int ) ;
 int git_reference_rename (TYPE_1__**,TYPE_1__*,int ,int ,int *) ;
 int git_reference_target (TYPE_1__*) ;
 int git_reference_type (TYPE_1__*) ;
 int ref_master_name ;
 int ref_two_name ;
 int ref_two_name_new ;

void test_refs_rename__prefix(void)
{

 git_reference *ref, *ref_two, *looked_up_ref, *renamed_ref;
 git_oid id;

 cl_git_pass(git_reference_lookup(&ref, g_repo, ref_master_name));
 cl_assert(git_reference_type(ref) & GIT_REFERENCE_DIRECT);

 git_oid_cpy(&id, git_reference_target(ref));


 cl_git_pass(git_reference_create(&ref_two, g_repo, ref_two_name, &id, 0, ((void*)0)));


 cl_git_pass(git_reference_lookup(&looked_up_ref, g_repo, ref_two_name));


 cl_git_pass(git_reference_rename(&renamed_ref, looked_up_ref, ref_two_name_new, 0, ((void*)0)));
 git_reference_free(looked_up_ref);
 git_reference_free(renamed_ref);


 cl_git_pass(git_reference_lookup(&looked_up_ref, g_repo, ref_two_name_new));
 cl_assert_equal_s(looked_up_ref->name, ref_two_name_new);
 git_reference_free(looked_up_ref);
 cl_git_fail(git_reference_lookup(&looked_up_ref, g_repo, ref_two_name));

 git_reference_free(ref);
 git_reference_free(ref_two);
 git_reference_free(looked_up_ref);
}
