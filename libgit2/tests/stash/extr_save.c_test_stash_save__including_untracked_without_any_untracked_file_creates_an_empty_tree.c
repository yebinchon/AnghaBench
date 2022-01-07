
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EMPTY_TREE ;
 int GIT_ENOTFOUND ;
 int GIT_OBJECT_TREE ;
 int GIT_STASH_INCLUDE_UNTRACKED ;
 int GIT_STATUS_IGNORED ;
 int GIT_STATUS_INDEX_MODIFIED ;
 int GIT_STATUS_WT_MODIFIED ;
 int assert_object_oid (char*,int ,int ) ;
 int assert_status (int ,char*,int) ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int git_stash_save (int *,int ,int ,int *,int ) ;
 int p_unlink (char*) ;
 int repo ;
 int signature ;
 int stash_tip_oid ;

void test_stash_save__including_untracked_without_any_untracked_file_creates_an_empty_tree(void)
{
 cl_must_pass(p_unlink("stash/when"));

 assert_status(repo, "what", GIT_STATUS_WT_MODIFIED | GIT_STATUS_INDEX_MODIFIED);
 assert_status(repo, "how", GIT_STATUS_INDEX_MODIFIED);
 assert_status(repo, "who", GIT_STATUS_WT_MODIFIED);
 assert_status(repo, "when", GIT_ENOTFOUND);
 assert_status(repo, "just.ignore", GIT_STATUS_IGNORED);

 cl_git_pass(git_stash_save(&stash_tip_oid, repo, signature, ((void*)0), GIT_STASH_INCLUDE_UNTRACKED));

 assert_object_oid("stash^3^{tree}", EMPTY_TREE, GIT_OBJECT_TREE);
}
