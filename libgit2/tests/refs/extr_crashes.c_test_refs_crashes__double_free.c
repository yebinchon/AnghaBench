
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;


 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_cleanup () ;
 int * cl_git_sandbox_init (char*) ;
 int git_reference_delete (int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int *,char const*) ;
 int git_reference_symbolic_create (int **,int *,char const*,char*,int ,int *) ;

void test_refs_crashes__double_free(void)
{
 git_repository *repo;
 git_reference *ref, *ref2;
 const char *REFNAME = "refs/heads/xxx";

 repo = cl_git_sandbox_init("testrepo.git");
 cl_git_pass(git_reference_symbolic_create(&ref, repo, REFNAME, "refs/heads/master", 0, ((void*)0)));
 cl_git_pass(git_reference_lookup(&ref2, repo, REFNAME));
 cl_git_pass(git_reference_delete(ref));
 git_reference_free(ref);
 git_reference_free(ref2);


 cl_git_fail(git_reference_lookup(&ref2, repo, REFNAME));

 cl_git_sandbox_cleanup();
}
