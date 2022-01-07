
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_STASH_INCLUDE_IGNORED ;
 int GIT_STASH_INCLUDE_UNTRACKED ;
 int assert_blob_oid (char*,char*) ;
 int assert_commit_message_contains (char*,char*) ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_path_exists (char*) ;
 int git_stash_save (int *,int ,int ,int *,int) ;
 int repo ;
 int signature ;
 int stash_tip_oid ;

void test_stash_save__can_include_untracked_and_ignored_files(void)
{
 cl_git_pass(git_stash_save(&stash_tip_oid, repo, signature, ((void*)0), GIT_STASH_INCLUDE_UNTRACKED | GIT_STASH_INCLUDE_IGNORED));

 assert_commit_message_contains("refs/stash^3", "untracked files on master: ");

 assert_blob_oid("refs/stash^3:what", ((void*)0));
 assert_blob_oid("refs/stash^3:how", ((void*)0));
 assert_blob_oid("refs/stash^3:who", ((void*)0));
 assert_blob_oid("refs/stash^3:when", "b6ed15e81e2593d7bb6265eb4a991d29dc3e628b");
 assert_blob_oid("refs/stash^3:just.ignore", "78925fb1236b98b37a35e9723033e627f97aa88b");

 cl_assert(!git_path_exists("stash/just.ignore"));
}
