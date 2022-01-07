
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_STASH_INCLUDE_IGNORED ;
 int GIT_STASH_INCLUDE_UNTRACKED ;
 int GIT_STATUS_IGNORED ;
 int GIT_STATUS_WT_NEW ;
 int assert_status (int ,char*,int ) ;
 int cl_assert (int) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_ignore_add_rule (int ,char*) ;
 int git_path_exists (char*) ;
 int git_stash_save (int *,int ,int ,int *,int) ;
 int p_mkdir (char*,int) ;
 int repo ;
 int signature ;
 int stash_tip_oid ;

void test_stash_save__ignored_directory(void)
{
 cl_git_pass(p_mkdir("stash/ignored_directory", 0777));
 cl_git_pass(p_mkdir("stash/ignored_directory/sub", 0777));
 cl_git_mkfile("stash/ignored_directory/sub/some_file", "stuff");

 assert_status(repo, "ignored_directory/sub/some_file", GIT_STATUS_WT_NEW);
 cl_git_pass(git_ignore_add_rule(repo, "ignored_directory/"));
 assert_status(repo, "ignored_directory/sub/some_file", GIT_STATUS_IGNORED);

 cl_git_pass(git_stash_save(&stash_tip_oid, repo, signature, ((void*)0), GIT_STASH_INCLUDE_UNTRACKED | GIT_STASH_INCLUDE_IGNORED));

 cl_assert(!git_path_exists("stash/ignored_directory/sub/some_file"));
 cl_assert(!git_path_exists("stash/ignored_directory/sub"));
 cl_assert(!git_path_exists("stash/ignored_directory"));
}
