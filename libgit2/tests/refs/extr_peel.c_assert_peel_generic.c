
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_object_t ;
typedef int git_object ;


 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_oid (int *,int ) ;
 int cl_git_pass (int ) ;
 int git_object_free (int *) ;
 int git_object_id (int *) ;
 int git_object_type (int *) ;
 int git_oid_fromstr (int *,char const*) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int *,char const*) ;
 int git_reference_peel (int **,int *,int ) ;

__attribute__((used)) static void assert_peel_generic(
 git_repository *repo,
 const char *ref_name,
 git_object_t requested_type,
 const char* expected_sha,
 git_object_t expected_type)
{
 git_oid expected_oid;
 git_reference *ref;
 git_object *peeled;

 cl_git_pass(git_reference_lookup(&ref, repo, ref_name));

 cl_git_pass(git_reference_peel(&peeled, ref, requested_type));

 cl_git_pass(git_oid_fromstr(&expected_oid, expected_sha));
 cl_assert_equal_oid(&expected_oid, git_object_id(peeled));

 cl_assert_equal_i(expected_type, git_object_type(peeled));

 git_object_free(peeled);
 git_reference_free(ref);
}
