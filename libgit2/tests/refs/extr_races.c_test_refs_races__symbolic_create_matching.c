
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_oid ;


 int GIT_EMODIFIED ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int commit_id ;
 int g_repo ;
 int git_oid_fromstr (int *,int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_reference_symbolic_create_matching (int **,int ,char*,int *,int,int *,int *) ;
 int git_reference_symbolic_set_target (int **,int *,int *,int *) ;
 int other_commit_id ;
 int * other_refname ;
 int * refname ;

void test_refs_races__symbolic_create_matching(void)
{
 git_reference *ref, *ref2, *ref3;
 git_oid id, other_id;

 git_oid_fromstr(&id, commit_id);
 git_oid_fromstr(&other_id, other_commit_id);

 cl_git_fail_with(GIT_EMODIFIED, git_reference_symbolic_create_matching(&ref, g_repo, "HEAD", other_refname, 1, other_refname, ((void*)0)));

 cl_git_pass(git_reference_lookup(&ref, g_repo, "HEAD"));
 cl_git_pass(git_reference_symbolic_create_matching(&ref2, g_repo, "HEAD", other_refname, 1, ((void*)0), refname));
 cl_git_fail_with(GIT_EMODIFIED, git_reference_symbolic_set_target(&ref3, ref, other_refname, ((void*)0)));

 git_reference_free(ref);
 git_reference_free(ref2);
 git_reference_free(ref3);
}
