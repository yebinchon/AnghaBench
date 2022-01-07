
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_remote ;
typedef int git_reference ;


 int GIT_BRANCH_REMOTE ;
 int cl_fixture_cleanup (char*) ;
 int cl_fixture_sandbox (char*) ;
 int cl_git_pass (int ) ;
 int git_branch_lookup (int **,int *,char*,int ) ;
 int git_reference_free (int *) ;
 int git_remote_create (int **,int *,char*,char*) ;
 int git_remote_free (int *) ;
 int git_remote_push (int *,int *,int *) ;
 int git_repository_free (int *) ;
 int git_repository_init (int **,char*,int) ;
 int git_repository_open (int **,char*) ;
 int push_array ;

void test_network_remote_local__update_tips_for_new_remote(void) {
 git_repository *src_repo;
 git_repository *dst_repo;
 git_remote *new_remote;
 git_reference* branch;


 cl_fixture_sandbox("testrepo.git");
 cl_git_pass(git_repository_open(&src_repo, "testrepo.git"));


 cl_git_pass(git_repository_init(&dst_repo, "./localbare.git", 1));


 cl_git_pass(git_remote_create(&new_remote, src_repo, "bare", "./localbare.git"));
 cl_git_pass(git_remote_push(new_remote, &push_array, ((void*)0)));

 cl_git_pass(git_branch_lookup(&branch, src_repo, "bare/master", GIT_BRANCH_REMOTE));

 git_reference_free(branch);
 git_remote_free(new_remote);
 git_repository_free(dst_repo);
 cl_fixture_cleanup("localbare.git");
 git_repository_free(src_repo);
 cl_fixture_cleanup("testrepo.git");
}
