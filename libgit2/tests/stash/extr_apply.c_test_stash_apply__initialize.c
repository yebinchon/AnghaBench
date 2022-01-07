
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_ENOTFOUND ;
 int GIT_STASH_INCLUDE_UNTRACKED ;
 int GIT_STATUS_CURRENT ;
 int GIT_STATUS_INDEX_MODIFIED ;
 int GIT_STATUS_INDEX_NEW ;
 int GIT_STATUS_WT_MODIFIED ;
 int GIT_STATUS_WT_NEW ;
 int assert_status (int ,char*,int) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_git_sandbox_init_new (char*) ;
 int cl_repo_commit_from_index (int *,int ,int ,int ,char*) ;
 int git_index_add_bypath (int ,char*) ;
 int git_index_write (int ) ;
 int git_repository_index (int *,int ) ;
 int git_signature_new (int *,char*,char*,int,int) ;
 int git_stash_save (int *,int ,int ,int *,int ) ;
 int repo ;
 int repo_index ;
 int signature ;

void test_stash_apply__initialize(void)
{
 git_oid oid;

 repo = cl_git_sandbox_init_new("stash");
 cl_git_pass(git_repository_index(&repo_index, repo));
 cl_git_pass(git_signature_new(&signature, "nulltoken", "emeric.fermas@gmail.com", 1323847743, 60));

 cl_git_mkfile("stash/what", "hello\n");
 cl_git_mkfile("stash/how", "small\n");
 cl_git_mkfile("stash/who", "world\n");
 cl_git_mkfile("stash/where", "meh\n");

 cl_git_pass(git_index_add_bypath(repo_index, "what"));
 cl_git_pass(git_index_add_bypath(repo_index, "how"));
 cl_git_pass(git_index_add_bypath(repo_index, "who"));

 cl_repo_commit_from_index(((void*)0), repo, signature, 0, "Initial commit");

 cl_git_rewritefile("stash/what", "goodbye\n");
 cl_git_rewritefile("stash/who", "funky world\n");
 cl_git_mkfile("stash/when", "tomorrow\n");
 cl_git_mkfile("stash/why", "would anybody use stash?\n");
 cl_git_mkfile("stash/where", "????\n");

 cl_git_pass(git_index_add_bypath(repo_index, "who"));
 cl_git_pass(git_index_add_bypath(repo_index, "why"));
 cl_git_pass(git_index_add_bypath(repo_index, "where"));
 cl_git_pass(git_index_write(repo_index));

 cl_git_rewritefile("stash/where", "....\n");


 assert_status(repo, "what", GIT_STATUS_WT_MODIFIED);
 assert_status(repo, "how", GIT_STATUS_CURRENT);
 assert_status(repo, "who", GIT_STATUS_INDEX_MODIFIED);
 assert_status(repo, "when", GIT_STATUS_WT_NEW);
 assert_status(repo, "why", GIT_STATUS_INDEX_NEW);
 assert_status(repo, "where", GIT_STATUS_INDEX_NEW|GIT_STATUS_WT_MODIFIED);

 cl_git_pass(git_stash_save(&oid, repo, signature, ((void*)0), GIT_STASH_INCLUDE_UNTRACKED));


 assert_status(repo, "what", GIT_STATUS_CURRENT);
 assert_status(repo, "how", GIT_STATUS_CURRENT);
 assert_status(repo, "who", GIT_STATUS_CURRENT);
 assert_status(repo, "when", GIT_ENOTFOUND);
 assert_status(repo, "why", GIT_ENOTFOUND);
 assert_status(repo, "where", GIT_ENOTFOUND);
}
