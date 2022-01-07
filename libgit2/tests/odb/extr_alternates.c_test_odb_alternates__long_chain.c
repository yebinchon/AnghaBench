
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_commit ;


 int ARRAY_SIZE (int *) ;
 int cl_fixture (char*) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_repository_free (int ) ;
 int git_repository_open (int *,int ) ;
 int init_linked_repo (int ,int ) ;
 int * paths ;
 int repo ;

void test_odb_alternates__long_chain(void)
{
 git_commit *commit;
 git_oid oid;
 size_t i;


 init_linked_repo(paths[0], cl_fixture("testrepo.git"));


 for (i = 1; i < ARRAY_SIZE(paths); i++) {
  init_linked_repo(paths[i], paths[i-1]);
 }


 cl_git_pass(git_repository_open(&repo, paths[ARRAY_SIZE(paths)-1]));
 git_oid_fromstr(&oid, "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
 cl_git_fail(git_commit_lookup(&commit, repo, &oid));
 git_repository_free(repo);
}
