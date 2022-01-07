
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;


 char const* REFNAME_DECOMPOSED ;
 int cl_assert_equal_oid (int ,int ) ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int git_reference_create (int **,int *,char const*,int ,int ,int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int *,char const*) ;
 int git_reference_name (int *) ;
 int git_reference_target (int *) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,char*) ;
 int * repo ;

void test_refs_unicode__create_and_lookup(void)
{
 git_reference *ref0, *ref1, *ref2;
 git_repository *repo2;

 const char *REFNAME = "refs/heads/" "\303\205" "ngstr" "\303\266" "m";
 const char *master = "refs/heads/master";


 cl_git_pass(git_reference_lookup(&ref0, repo, master));
 cl_git_pass(git_reference_create(
  &ref1, repo, REFNAME, git_reference_target(ref0), 0, ((void*)0)));
 cl_assert_equal_s(REFNAME, git_reference_name(ref1));
 git_reference_free(ref0);


 cl_git_pass(git_repository_open(&repo2, "testrepo.git"));

 cl_git_pass(git_reference_lookup(&ref2, repo2, REFNAME));
 cl_assert_equal_oid(git_reference_target(ref1), git_reference_target(ref2));
 cl_assert_equal_s(REFNAME, git_reference_name(ref2));
 git_reference_free(ref2);
 git_reference_free(ref1);
 git_repository_free(repo2);
}
