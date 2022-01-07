
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_object ;


 int cl_assert (int) ;
 int cl_assert_equal_s (char const*,char const*) ;
 int cl_git_fail (int) ;
 int cl_git_pass (int) ;
 int git_object_free (int *) ;
 int git_object_id (int *) ;
 int git_oid_fmt (char*,int ) ;
 int git_reference_free (int *) ;
 char const* git_reference_name (int *) ;
 int git_revparse_ext (int **,int **,int *,char const*) ;

__attribute__((used)) static void test_object_and_ref_inrepo(
 const char *spec,
 const char *expected_oid,
 const char *expected_refname,
 git_repository *repo,
 bool assert_reference_retrieval)
{
 char objstr[64] = {0};
 git_object *obj = ((void*)0);
 git_reference *ref = ((void*)0);
 int error;

 error = git_revparse_ext(&obj, &ref, repo, spec);

 if (expected_oid != ((void*)0)) {
  cl_git_pass(error);
  git_oid_fmt(objstr, git_object_id(obj));
  cl_assert_equal_s(objstr, expected_oid);
 } else
  cl_git_fail(error);

 if (assert_reference_retrieval) {
  if (expected_refname == ((void*)0))
   cl_assert(((void*)0) == ref);
  else
   cl_assert_equal_s(expected_refname, git_reference_name(ref));
 }

 git_object_free(obj);
 git_reference_free(ref);
}
