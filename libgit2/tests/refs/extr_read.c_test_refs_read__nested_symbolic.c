
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int name; } ;
typedef TYPE_1__ git_reference ;
typedef int git_oid ;
typedef int git_object ;


 int GIT_OBJECT_ANY ;
 scalar_t__ GIT_OBJECT_COMMIT ;
 int GIT_REFERENCE_DIRECT ;
 int GIT_REFERENCE_SYMBOLIC ;
 int cl_assert (int) ;
 int cl_assert_equal_oid (int *,int ) ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int current_master_tip ;
 int g_repo ;
 int git_object_free (int *) ;
 int git_object_id (int *) ;
 int git_object_lookup (int **,int ,int ,int ) ;
 scalar_t__ git_object_type (int *) ;
 int git_oid_fromstr (int *,int ) ;
 int git_reference_free (TYPE_1__*) ;
 int git_reference_lookup (TYPE_1__**,int ,int ) ;
 int git_reference_resolve (TYPE_1__**,TYPE_1__*) ;
 int git_reference_target (TYPE_1__*) ;
 int git_reference_type (TYPE_1__*) ;
 int head_tracker_sym_ref_name ;
 scalar_t__ reference_is_packed (TYPE_1__*) ;

void test_refs_read__nested_symbolic(void)
{

 git_reference *reference, *resolved_ref;
 git_object *object;
 git_oid id;

 cl_git_pass(git_reference_lookup(&reference, g_repo, head_tracker_sym_ref_name));
 cl_assert(git_reference_type(reference) & GIT_REFERENCE_SYMBOLIC);
 cl_assert(reference_is_packed(reference) == 0);
 cl_assert_equal_s(reference->name, head_tracker_sym_ref_name);

 cl_git_pass(git_reference_resolve(&resolved_ref, reference));
 cl_assert(git_reference_type(resolved_ref) == GIT_REFERENCE_DIRECT);

 cl_git_pass(git_object_lookup(&object, g_repo, git_reference_target(resolved_ref), GIT_OBJECT_ANY));
 cl_assert(object != ((void*)0));
 cl_assert(git_object_type(object) == GIT_OBJECT_COMMIT);

 git_oid_fromstr(&id, current_master_tip);
 cl_assert_equal_oid(&id, git_object_id(object));

 git_object_free(object);

 git_reference_free(reference);
 git_reference_free(resolved_ref);
}
