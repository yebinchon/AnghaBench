
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_commit ;


 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_repository_free (int ) ;
 int git_repository_open (int *,int ) ;
 int init_linked_repo (int ,int ) ;
 int * paths ;
 int repo ;

void test_odb_alternates__chained(void)
{
 git_commit *commit;
 git_oid oid;


 init_linked_repo(paths[0], cl_fixture("testrepo.git"));


 init_linked_repo(paths[1], paths[0]);


 cl_git_pass(git_repository_open(&repo, paths[1]));
 git_oid_fromstr(&oid, "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
 cl_git_pass(git_commit_lookup(&commit, repo, &oid));
 git_commit_free(commit);
 git_repository_free(repo);
}
