
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int GIT_STASH_INCLUDE_UNTRACKED ;
 int GIT_STATUS_WT_NEW ;
 int assert_status (int ,char*,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_repository_free (int *) ;
 int git_repository_init (int **,char*,int) ;
 int git_stash_save (int *,int ,int ,int *,int ) ;
 int repo ;
 int signature ;
 int stash_tip_oid ;

void test_stash_save__skip_submodules(void)
{
 git_repository *untracked_repo;
 cl_git_pass(git_repository_init(&untracked_repo, "stash/untracked_repo", 0));
 cl_git_mkfile("stash/untracked_repo/content", "stuff");
 git_repository_free(untracked_repo);

 assert_status(repo, "untracked_repo/", GIT_STATUS_WT_NEW);

 cl_git_pass(git_stash_save(
  &stash_tip_oid, repo, signature, ((void*)0), GIT_STASH_INCLUDE_UNTRACKED));

 assert_status(repo, "untracked_repo/", GIT_STATUS_WT_NEW);
}
