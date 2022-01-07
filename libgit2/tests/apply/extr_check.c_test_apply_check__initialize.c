
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_object ;
typedef int git_commit ;


 int GIT_RESET_HARD ;
 int TEST_REPO_PATH ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (int ) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_reset (int ,int *,int ,int *) ;
 int repo ;

void test_apply_check__initialize(void)
{
 git_oid oid;
 git_commit *commit;

 repo = cl_git_sandbox_init(TEST_REPO_PATH);

 git_oid_fromstr(&oid, "539bd011c4822c560c1d17cab095006b7a10f707");
 cl_git_pass(git_commit_lookup(&commit, repo, &oid));
 cl_git_pass(git_reset(repo, (git_object *)commit, GIT_RESET_HARD, ((void*)0)));
 git_commit_free(commit);
}
