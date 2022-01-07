
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_10__ {int name; } ;
typedef TYPE_1__ git_reference ;
typedef int git_oid ;


 int GIT_REFERENCE_DIRECT ;
 int GIT_REFERENCE_SYMBOLIC ;
 int cl_assert (int) ;
 int cl_assert_equal_oid (int *,int ) ;
 int cl_assert_equal_s (int ,char const*) ;
 int cl_git_pass (int ) ;
 int current_head_target ;
 int current_master_tip ;
 int * g_repo ;
 int git_oid_fromstr (int *,int ) ;
 int git_reference_free (TYPE_1__*) ;
 int git_reference_lookup (TYPE_1__**,int *,char const*) ;
 int git_reference_resolve (TYPE_1__**,TYPE_1__*) ;
 int git_reference_symbolic_create (TYPE_1__**,int *,char const*,int ,int ,int *) ;
 int git_reference_target (TYPE_1__*) ;
 int git_reference_type (TYPE_1__*) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,char*) ;
 scalar_t__ reference_is_packed (TYPE_1__*) ;

void test_refs_create__symbolic(void)
{

 git_reference *new_reference, *looked_up_ref, *resolved_ref;
 git_repository *repo2;
 git_oid id;

 const char *new_head_tracker = "ANOTHER_HEAD_TRACKER";

 git_oid_fromstr(&id, current_master_tip);


 cl_git_pass(git_reference_symbolic_create(&new_reference, g_repo, new_head_tracker, current_head_target, 0, ((void*)0)));


 cl_git_pass(git_reference_lookup(&looked_up_ref, g_repo, new_head_tracker));
 cl_assert(git_reference_type(looked_up_ref) & GIT_REFERENCE_SYMBOLIC);
 cl_assert(reference_is_packed(looked_up_ref) == 0);
 cl_assert_equal_s(looked_up_ref->name, new_head_tracker);


 cl_git_pass(git_reference_resolve(&resolved_ref, looked_up_ref));
 cl_assert(git_reference_type(resolved_ref) == GIT_REFERENCE_DIRECT);


 cl_assert_equal_oid(&id, git_reference_target(resolved_ref));
 git_reference_free(looked_up_ref);
 git_reference_free(resolved_ref);


 cl_git_pass(git_repository_open(&repo2, "testrepo"));

 cl_git_pass(git_reference_lookup(&looked_up_ref, repo2, new_head_tracker));
 cl_git_pass(git_reference_resolve(&resolved_ref, looked_up_ref));
 cl_assert_equal_oid(&id, git_reference_target(resolved_ref));

 git_repository_free(repo2);

 git_reference_free(new_reference);
 git_reference_free(looked_up_ref);
 git_reference_free(resolved_ref);
}
