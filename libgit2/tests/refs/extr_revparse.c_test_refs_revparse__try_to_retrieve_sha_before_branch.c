
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_object ;
typedef int git_commit ;


 int GIT_OID_HEXSZ ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_cleanup () ;
 int * cl_git_sandbox_init (char*) ;
 int git_branch_create (int **,int *,char*,int *,int ) ;
 int git_object_free (int *) ;
 int git_object_id (int *) ;
 int git_oid_tostr (char*,int,int ) ;
 int git_reference_free (int *) ;
 int git_revparse_single (int **,int *,char*) ;
 int test_object_inrepo (char*,char*,int *) ;

void test_refs_revparse__try_to_retrieve_sha_before_branch(void)
{
 git_repository *repo;
 git_reference *branch;
 git_object *target;
 char sha[GIT_OID_HEXSZ + 1];

 repo = cl_git_sandbox_init("testrepo.git");

 test_object_inrepo("a65fedf39aefe402d3bb6e24df4d4f5fe4547750", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750", repo);

 cl_git_pass(git_revparse_single(&target, repo, "HEAD~3"));
 cl_git_pass(git_branch_create(&branch, repo, "a65fedf39aefe402d3bb6e24df4d4f5fe4547750", (git_commit *)target, 0));

 git_oid_tostr(sha, GIT_OID_HEXSZ + 1, git_object_id(target));

 test_object_inrepo("a65fedf39aefe402d3bb6e24df4d4f5fe4547750", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750", repo);
 test_object_inrepo("heads/a65fedf39aefe402d3bb6e24df4d4f5fe4547750", sha, repo);

 git_reference_free(branch);
 git_object_free(target);
 cl_git_sandbox_cleanup();
}
