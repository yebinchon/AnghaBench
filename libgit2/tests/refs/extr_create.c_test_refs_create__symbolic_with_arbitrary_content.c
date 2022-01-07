
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_8__ {int name; } ;
typedef TYPE_1__ git_reference ;
typedef int git_oid ;


 int GIT_OPT_ENABLE_STRICT_SYMBOLIC_REF_CREATION ;
 int GIT_REFERENCE_SYMBOLIC ;
 int cl_assert (int) ;
 int cl_assert_equal_s (int ,char const*) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int current_master_tip ;
 int * g_repo ;
 int git_libgit2_opts (int ,int ) ;
 int git_oid_fromstr (int *,int ) ;
 int git_reference_free (TYPE_1__*) ;
 int git_reference_lookup (TYPE_1__**,int *,char const*) ;
 int git_reference_symbolic_create (TYPE_1__**,int *,char const*,char const*,int ,int *) ;
 int git_reference_symbolic_target (TYPE_1__*) ;
 int git_reference_type (TYPE_1__*) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,char*) ;
 scalar_t__ reference_is_packed (TYPE_1__*) ;

void test_refs_create__symbolic_with_arbitrary_content(void)
{
 git_reference *new_reference, *looked_up_ref;
 git_repository *repo2;
 git_oid id;

 const char *new_head_tracker = "ANOTHER_HEAD_TRACKER";
 const char *arbitrary_target = "ARBITRARY DATA";

 git_oid_fromstr(&id, current_master_tip);




 cl_git_fail(git_reference_symbolic_create(&new_reference, g_repo, new_head_tracker, arbitrary_target, 0, ((void*)0)));

 git_libgit2_opts(GIT_OPT_ENABLE_STRICT_SYMBOLIC_REF_CREATION, 0);


 cl_git_pass(git_reference_symbolic_create(&new_reference, g_repo, new_head_tracker, arbitrary_target, 0, ((void*)0)));


 cl_git_pass(git_reference_lookup(&looked_up_ref, g_repo, new_head_tracker));
 cl_assert(git_reference_type(looked_up_ref) & GIT_REFERENCE_SYMBOLIC);
 cl_assert(reference_is_packed(looked_up_ref) == 0);
 cl_assert_equal_s(looked_up_ref->name, new_head_tracker);
 git_reference_free(looked_up_ref);


 cl_assert_equal_s(git_reference_symbolic_target(new_reference), arbitrary_target);


 cl_git_pass(git_repository_open(&repo2, "testrepo"));


 cl_git_pass(git_reference_lookup(&looked_up_ref, repo2, new_head_tracker));
 cl_assert(git_reference_type(looked_up_ref) & GIT_REFERENCE_SYMBOLIC);
 cl_assert(reference_is_packed(looked_up_ref) == 0);
 cl_assert_equal_s(looked_up_ref->name, new_head_tracker);


 cl_assert_equal_s(git_reference_symbolic_target(new_reference), arbitrary_target);

 git_repository_free(repo2);
 git_reference_free(new_reference);
 git_reference_free(looked_up_ref);
}
