
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_index ;


 int GIT_ENOTFOUND ;
 int GIT_STASH_DEFAULT ;
 int GIT_STATUS_CURRENT ;
 int GIT_STATUS_WT_MODIFIED ;
 int assert_status (int ,char*,int ) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_repo_commit_from_index (int *,int *,int *,int,char*) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_repository_free (int *) ;
 int git_repository_index (int **,int *) ;
 int git_stash_save (int *,int ,int ,int *,int ) ;
 int git_submodule_open (int **,int ) ;
 int repo ;
 int signature ;
 int sm ;
 int stash_tip_oid ;

void test_stash_submodules__stash_is_empty_with_modified_submodules(void)
{
 static git_index *smindex;
 static git_repository *smrepo;

 cl_git_pass(git_stash_save(&stash_tip_oid, repo, signature, ((void*)0), GIT_STASH_DEFAULT));
 assert_status(repo, "modified", GIT_STATUS_CURRENT);


 cl_git_rewritefile("submodules/testrepo/README", "heyheyhey");
 assert_status(repo, "testrepo", GIT_STATUS_WT_MODIFIED);


 cl_git_pass(git_submodule_open(&smrepo, sm));
 cl_git_pass(git_repository_index(&smindex, smrepo));
 cl_git_pass(git_index_add_bypath(smindex, "README"));


 cl_repo_commit_from_index(((void*)0), smrepo, ((void*)0), 1372350000, "Modify it");
 assert_status(repo, "testrepo", GIT_STATUS_WT_MODIFIED);

 cl_git_fail_with(git_stash_save(&stash_tip_oid, repo, signature, ((void*)0), GIT_STASH_DEFAULT), GIT_ENOTFOUND);

 git_index_free(smindex);
 git_repository_free(smrepo);
}
